import InitECandidate.Solver.MemSafe.Struct.Sum

/-!
# Tracking a hand-verified body: `Trk`

`Trk C H Γ0 s0 p0 PW Γ t`: from the entry state `s0` (typing `Γ0`, allocator `p0`) the body
has reached `t` with typing `Γ`: the allocator moved monotonically, `Γ` extends `Γ0` with new
cells only in fresh space, `G C H Γ t` holds, memory changed only in writable cells of `Γ0`,
cells unallocated at entry and the protected cells `PW`, and the protected globals, the
memory domain and the byte order are unchanged. Steps:

* `trk_refl`, `trk_congr` (other locals/clock), `trk_sumCore` (the final `SumCore`);
* `trk_call`: a callee with a `SumSpec` (its footprint mapped back to `Γ0`, `p0`);
* `trk_alloc`, `trk_alloc_obj`: an allocator call (`AllocSpec`), possibly adding the new block
  to `Γ` as an object of an all-scalar, untagged type with trivial hook;
* `trk_sm`: own writes to the running frame's stack/memory cells and to stack/memory objects.
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64}

/-! ## Allocation facts -/

theorem fresh_notAlloc {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered) (hm : p.Mono p')
    {a : BitVec 64} (hf : Fresh p p' a) : ¬ p.Allocated a.toNat := by
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
  obtain ⟨d1, d2, d3, d4, d5, -, -, -⟩ := hord'
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Fresh at hf
  unfold Ptrs.Allocated
  omega

theorem notAlloc_mono {p p' : Ptrs} (hm : p.Mono p') {a : Nat} (h : ¬ p'.Allocated a) :
    ¬ p.Allocated a := by
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Ptrs.Allocated at *
  omega

theorem newFresh_trans {Γ0 Γ1 Γ2 : Gam} {p0 p1 p2 : Ptrs} (hm1 : p0.Mono p1) (hm2 : p1.Mono p2)
    (h1 : NewFresh Γ0 Γ1 p0 p1) (h2 : NewFresh Γ1 Γ2 p1 p2) : NewFresh Γ0 Γ2 p0 p2 := by
  intro o ho a ha1 ha2
  rcases h2 o ho a ha1 ha2 with ⟨o1, ho1, hb1, ht1, hl1, hh1⟩ | hf
  · rcases h1 o1 ho1 a hl1 hh1 with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hl0, hh0⟩
    · exact Or.inr (fresh_mono hm1 hm2 hf)
  · exact Or.inr (fresh_mono_l hm1 hm2 hf)

/-- A writable cell of an extension is a writable cell of the original typing or was
unallocated at entry. -/
theorem wcell_back {C : Cfg} {Γ0 Γ : Gam} {p0 p : Ptrs} (hord0 : p0.Ordered) (hord : p.Ordered)
    (hm : p0.Mono p) (hL0 : Layout C p0 Γ0) (hL : Layout C p Γ) (hnf : NewFresh Γ0 Γ p0 p)
    {a : BitVec 64} (hw : WCell C Γ a) : WCell C Γ0 a ∨ ¬ p0.Allocated a.toNat := by
  obtain ⟨o, ho, k, hk, hnp, rfl⟩ := hw
  obtain ⟨hc, -⟩ := cell_toNat hord hL ho hk
  have hin1 : o.lo ≤ (o.cell k).toNat := by rw [hc]; omega
  have hin2 : (o.cell k).toNat < o.hi := by rw [hc]; unfold Obj.HasSlot at hk; unfold Obj.hi Obj.lo; omega
  rcases hnf o ho _ hin1 hin2 with ⟨o0, ho0, hb, ht, hl, hh⟩ | hf
  · left
    have h8 := (hL0.1 o0 ho0).2.1
    have hk0 : o0.HasSlot k := by
      unfold Obj.HasSlot
      rw [hc] at hl hh
      simp only [Obj.lo, Obj.hi, hb] at hl hh
      omega
    refine ⟨o0, ho0, k, hk0, by rw [ht]; exact hnp, ?_⟩
    unfold Obj.cell; rw [hb]
  · exact Or.inr (fresh_notAlloc hord0 hord hm hf)

/-! ## The tracking predicate -/

def Trk (C : Cfg) (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (PW : BitVec 64 → Prop)
    (Γ : Gam) (t : State σ) : Prop :=
  ∃ p, ptrsOf t = some p ∧ p0.Mono p ∧ Ext Γ0 Γ ∧ NewFresh Γ0 Γ p0 p ∧ G C H Γ t ∧
    ModifiesOnly (fun a => WCell C Γ0 a ∨ ¬ p0.Allocated a.toNat ∨ PW a) s0.memory t.memory ∧
    (∀ g ∈ C.PG, t.globals.lookup g = s0.globals.lookup g) ∧ t.memaddrs = s0.memaddrs ∧
    t.be = s0.be

section trk
variable {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

theorem trk_refl (hG : G C H Γ0 s0) (hp : ptrsOf s0 = some p0) : Trk C H Γ0 s0 p0 PW Γ0 s0 :=
  ⟨p0, hp, mono_refl p0, ext_refl Γ0, newFresh_refl Γ0 p0 p0, hG, fun _ _ => rfl,
    fun _ _ => rfl, rfl, rfl⟩

theorem trk_congr (hH : HooksLawful C H) {Γ : Gam} {t t' : State σ}
    (h : Trk C H Γ0 s0 p0 PW Γ t) (hm : t'.memory = t.memory) (hg : t'.globals = t.globals)
    (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be) : Trk C H Γ0 s0 p0 PW Γ t' := by
  obtain ⟨p, hp, hm0, hx, hnf, hG, hmod, hpg, hd0, hbe0⟩ := h
  refine ⟨p, by rw [← hp]; unfold ptrsOf gword; rw [hg], hm0, hx, hnf, G_congr hH hm hg hd hbe hG,
    fun a ha => by rw [hm]; exact hmod a ha, fun g hg' => by rw [hg]; exact hpg g hg',
    hd.trans hd0, hbe.trans hbe0⟩

theorem trk_G {Γ : Gam} {t : State σ} (h : Trk C H Γ0 s0 p0 PW Γ t) : G C H Γ t := by
  obtain ⟨_, _, _, _, _, hG, _⟩ := h
  exact hG

theorem trk_ext {Γ : Gam} {t : State σ} (h : Trk C H Γ0 s0 p0 PW Γ t) : Ext Γ0 Γ := by
  obtain ⟨_, _, _, hx, _⟩ := h
  exact hx

/-- The final `SumCore`. -/
theorem trk_sumCore {Γ : Gam} {t : State σ} {sg : Sig} {PWs : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (h : Trk C H Γ0 s0 p0 PW Γ t) (hp0 : ptrsOf s0 = some p0)
    (hPW : ∀ a, PW a → PWs a)
    (hgrow : sg.grows = false → ∀ p, ptrsOf t = some p → NewFresh Γ0 Γ p0 p0)
    (hret : ∀ p, ptrsOf t = some p → ∀ v, r = .returned v → RetOK Γ p0 p vs sg.ret v) :
    ∃ p, SumCore C H sg PWs Γ0 s0 vs r t Γ p0 p := by
  obtain ⟨p, hp, hm0, hx, hnf, hG, hmod, hpg, -, -⟩ := h
  refine ⟨p, hp0, hp, hm0, hx, hnf, hG, ?_, fun g hg _ => hpg g hg, fun hg => hgrow hg p hp,
    hret p hp⟩
  exact hmod.mono fun a ha => by
    rcases ha with ha | ha | ha
    · exact Or.inl ha
    · exact Or.inr (Or.inr (Or.inl ha))
    · exact Or.inr (Or.inr (Or.inr (hPW a ha)))

/-- A call to a callee with a `SumCore` from the current state (its entry state has the same
memory and globals). -/
theorem trk_call {Γ Γ' : Gam} {t t' st : State σ} {sg : Sig} {PW' : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : Trk C H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW' a) Γ t' vs r st Γ' p p')
    (hgw : ∀ g ∈ C.PG, g ∉ sg.gw)
    (hArg : ∀ a, ArgCells sg.params vs a → WCell C Γ a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hPW : ∀ a, ProtCell C Γ a → PW' a → PW a)
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) : Trk C H Γ0 s0 p0 PW Γ' st := by
  obtain ⟨p1, hp1, hm1, hx1, hnf1, hG1, hmod1, hpg1, hd1, hbe1⟩ := h
  obtain ⟨hpe, hpst, hmc, hxc, hnfc, hGc, hmodc, hpgc, -, -⟩ := hc
  have hpe' : ptrsOf t = some p := by rw [← hpe]; unfold ptrsOf gword; rw [htg]
  rw [hp1] at hpe'
  cases hpe'
  obtain ⟨q, hq, hordp, hLp, -⟩ := hG1
  rw [hp1] at hq
  cases hq
  refine ⟨p', hpst, mono_trans hm1 hmc, ext_trans hx1 hxc, newFresh_trans hm1 hmc hnf1 hnfc, hGc,
    ?_, ?_, hd.trans hd1, hbe.trans hbe1⟩
  · intro a ha
    have e1 : st.memory a = t.memory a := by
      rw [← htm]
      refine hmodc a fun hc => ?_
      rcases hc with hw | harg | hna | ⟨hpc, hpw⟩
      · rcases wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
        · exact ha (Or.inl h')
        · exact ha (Or.inr (Or.inl h'))
      · rcases hArg a harg with hw | hna | hpw
        · rcases wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
          · exact ha (Or.inl h')
          · exact ha (Or.inr (Or.inl h'))
        · exact ha (Or.inr (Or.inl hna))
        · exact ha (Or.inr (Or.inr hpw))
      · exact ha (Or.inr (Or.inl (notAlloc_mono hm1 hna)))
      · exact ha (Or.inr (Or.inr (hPW a hpc hpw)))
    rw [e1, hmod1 a ha]
  · intro g hg
    rw [hpgc g hg (hgw g hg), htg, hpg1 g hg]

/-! ## Allocator calls -/

/-- The allocator globals are neither typed nor protected. -/
structure AllocG (C : Cfg) : Prop where
  gt : ∀ g ∈ [gHeap, gFrame, gScratch], C.GT.lookup g = none
  pg : ∀ g ∈ [gHeap, gFrame, gScratch], g ∉ C.PG

theorem alloc_glob_eq {C : Cfg} (hA : AllocG C) {rg : Region} {s t : State σ}
    (h : ∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) :
    (∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g) ∧
      ∀ g k, C.GT.lookup g = some k → gword t g = gword s g := by
  have hmem : rg.global ∈ [gHeap, gFrame, gScratch] := by cases rg <;> simp [Region.global]
  refine ⟨fun g hg => h g fun e => hA.pg _ hmem (e ▸ hg), fun g k hk => ?_⟩
  unfold gword
  rw [h g fun e => by rw [e, hA.gt _ hmem] at hk; cases hk]

/-- `G` under an allocator move (memory unchanged). -/
theorem G_ptrs (hH : HooksLawful C H) (hA : AllocG C) {Γ : Gam} {s t : State σ} {rg : Region}
    (hG : G C H Γ s) (hm : t.memory = s.memory)
    (hgl : ∀ g, g ≠ rg.global → t.globals.lookup g = s.globals.lookup g) {p p' : Ptrs}
    (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p') (hord' : p'.Ordered) (hmo : p.Mono p')
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) : G C H Γ t := by
  obtain ⟨hpg, hgt⟩ := alloc_glob_eq hA hgl
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hG
  rw [hp] at hq; cases hq
  refine ⟨p', hp', hord', layout_mono hmo hL, by rw [hm]; exact hF, by rw [hm]; exact hT, ?_, ?_⟩
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, (hgt g k hk).trans hv, hf⟩
  · intro o ho
    exact (hH.2 Γ s t o (hW o ho) hd hbe (fun a _ => by rw [hm]) hpg).1

theorem trk_alloc (hH : HooksLawful C H) (hA : AllocG C) {Γ : Gam} {t t' st : State σ}
    {rg : Region} {p p' : Ptrs} (h : Trk C H Γ0 s0 p0 PW Γ t)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals) (hp : ptrsOf t' = some p)
    (hm : st.memory = t'.memory)
    (hgl : ∀ g, g ≠ rg.global → st.globals.lookup g = t'.globals.lookup g)
    (hp' : ptrsOf st = some p') (hord' : p'.Ordered) (hmo : p.Mono p')
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) : Trk C H Γ0 s0 p0 PW Γ st := by
  have hpt : ptrsOf t = some p := by rw [← hp]; unfold ptrsOf gword; rw [htg]
  obtain ⟨p1, hp1, hm1, hx1, hnf1, hG1, hmod1, hpg1, hd1, hbe1⟩ := h
  rw [hp1] at hpt; cases hpt
  have hgl' : ∀ g, g ≠ rg.global → st.globals.lookup g = t.globals.lookup g := fun g hg => by
    rw [hgl g hg, htg]
  refine ⟨p', hp', mono_trans hm1 hmo, hx1, ?_, G_ptrs hH hA hG1 (hm.trans htm) hgl' hp1 hp' hord'
    hmo hd hbe, fun a ha => by rw [hm, htm]; exact hmod1 a ha, fun g hg => ?_, hd.trans hd1,
    hbe.trans hbe1⟩
  · intro o ho a h1 h2
    rcases hnf1 o ho a h1 h2 with h | h
    · exact Or.inl h
    · exact Or.inr (fresh_mono hm1 hmo h)
  · rw [(alloc_glob_eq hA hgl').1 g hg, hpg1 g hg]

/-- A block unallocated at `p` and live at `p'` is fresh. -/
theorem fresh_of_live {p p' : Ptrs} (hord : p.Ordered) {rg : Region} {q n : Nat}
    (hlive : rg.Live p' q n) (hna : ∀ a, q ≤ a → a < q + n → ¬ p.Allocated a) {a : BitVec 64}
    (h1 : q ≤ a.toNat) (h2 : a.toNat < q + n) : Fresh p p' a := by
  have := hna _ h1 h2
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
  unfold Ptrs.Allocated at this
  unfold Fresh
  cases rg <;> simp only [Region.Live] at hlive <;> unfold heapBase heapEnd scratchEnd at * <;> omega

/-- An allocator call whose block becomes a new object of an all-scalar, untagged type with a
trivial hook. -/
theorem trk_alloc_obj (hH : HooksLawful C H) (hM : HooksMono C H) (hA : AllocG C)
    {Γ : Gam} {t t' st : State σ} {rg : Region} {p p' : Ptrs} {q : BitVec 64} {n : Nat}
    {ty : Nat} (h : Trk C H Γ0 s0 p0 PW Γ t) (htm : t'.memory = t.memory)
    (htg : t'.globals = t.globals) (hp : ptrsOf t' = some p) (hm : st.memory = t'.memory)
    (hgl : ∀ g, g ≠ rg.global → st.globals.lookup g = t'.globals.lookup g)
    (hp' : ptrsOf st = some p') (hord' : p'.Ordered) (hmo : p.Mono p')
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be)
    (hq8 : q.toNat % 8 = 0) (hn8 : n % 8 = 0) (hn0 : 0 < n) (hmin : (C.ty ty).minSz ≤ n)
    (hreg : (C.ty ty).region = rg) (hlive : rg.Live p' q.toNat n)
    (hna : ∀ a, q.toNat ≤ a → a < q.toNat + n → ¬ p.Allocated a)
    (hsc : ∀ k, (C.ty ty).slot k = .scalar) (htag : C.tags.lookup ty = none)
    (hwf : ∀ Γ (s : State σ) o, o.ty = ty → H.wf Γ s o) :
    Trk C H Γ0 s0 p0 PW (Γ ++ [⟨q, ty, n⟩]) st := by
  have h' := trk_alloc hH hA h htm htg hp hm hgl hp' hord' hmo hd hbe
  have hpt : ptrsOf t = some p := by rw [← hp]; unfold ptrsOf gword; rw [htg]
  obtain ⟨p2, hp2, hm2, hx2, hnf2, hG2, hmod2, hpg2, hd2, hbe2⟩ := h'
  rw [hp'] at hp2; cases hp2
  obtain ⟨p1, hp1, hm1, -, -, hG1, -⟩ := h
  rw [hpt] at hp1; cases hp1
  have hord : p.Ordered := by obtain ⟨q', hq', ho', -⟩ := hG1; rw [hpt] at hq'; cases hq'; exact ho'
  have hG2c := hG2
  obtain ⟨q2, hq2, -, hL2, -⟩ := hG2c
  rw [hp'] at hq2; cases hq2
  have hbn : q.toNat + n ≤ scratchEnd := by
    rw [← hreg] at hlive
    obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord'
    revert hlive; cases (C.ty ty).region <;> simp only [Region.Live] <;>
      unfold heapBase heapEnd scratchEnd at * <;> intro hlive <;> omega
  have hfr : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + n → Fresh p p' a :=
    fun a h1 h2 => fresh_of_live hord hlive hna h1 h2
  have hL1 : Layout C p Γ := by
    obtain ⟨q', hq', -, hL', -⟩ := hG1; rw [hpt] at hq'; cases hq'; exact hL'
  have hLn : Layout C p' (Γ ++ [⟨q, ty, n⟩]) :=
    layout_snoc hL2 ⟨hq8, hn8, hn0, hmin, by rw [hreg]; exact hlive⟩ fun x hx =>
      fresh_range_disj hord hord' hmo hL1 hx hn0 hbn hfr
  have hGn : G C H (Γ ++ [⟨q, ty, n⟩]) st := by
    refine G_of (D := fun _ => False) hH hM hG2 hp' hord' hLn (ext_snoc Γ _) rfl rfl
      (fun _ _ => rfl) (fun _ _ _ => rfl) (fun _ _ => rfl) ?_ ?_ ?_
    · intro o' ho' k hk
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, hk, id⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        right; rw [hsc k]; trivial
    · intro o' ho' tag ht
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, id⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        rw [htag] at ht; cases ht
    · intro o' ho'
      rcases List.mem_append.mp ho' with ho' | ho'
      · exact Or.inl ⟨o', ho', rfl, rfl, fun _ _ h => h⟩
      · simp only [List.mem_singleton] at ho'
        subst ho'
        exact Or.inr (hwf _ _ _ rfl)
  refine ⟨p', hp', hm2, ext_trans hx2 (ext_snoc Γ _), ?_, hGn, hmod2, hpg2, hd2, hbe2⟩
  intro o' ho' a h1 h2
  rcases List.mem_append.mp ho' with ho' | ho'
  · exact hnf2 o' ho' a h1 h2
  · simp only [List.mem_singleton] at ho'
    subst ho'
    exact Or.inr (fresh_mono_l hm1 hmo (hfr a h1 h2))

/-- An allocator call whose fresh space grows object `i` in place (all-scalar, untagged type
with a trivial hook): `Γ[i]` ends at the old pointer, its new end lies in fresh space. -/
theorem trk_grow (hH : HooksLawful C H) (hM : HooksMono C H) (hA : AllocG C)
    {Γ : Gam} {t t' st : State σ} {rg : Region} {p p' : Ptrs} {i : Nat} (hi : i < Γ.length)
    {o' : Obj} (h : Trk C H Γ0 s0 p0 PW Γ t) (htm : t'.memory = t.memory)
    (htg : t'.globals = t.globals) (hp : ptrsOf t' = some p) (hm : st.memory = t'.memory)
    (hgl : ∀ g, g ≠ rg.global → st.globals.lookup g = t'.globals.lookup g)
    (hp' : ptrsOf st = some p') (hord' : p'.Ordered) (hmo : p.Mono p')
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be)
    (hb : o'.base = Γ[i].base) (ht : o'.ty = Γ[i].ty) (hs : Γ[i].size ≤ o'.size)
    (hok : ObjOK C p' o')
    (hfr : ∀ a : BitVec 64, Γ[i].hi ≤ a.toNat → a.toNat < o'.hi → Fresh p p' a)
    (hsc : ∀ k, (C.ty o'.ty).slot k = .scalar) (htag : C.tags.lookup o'.ty = none)
    (hwf : ∀ Γ (s : State σ) o, o.ty = o'.ty → H.wf Γ s o) :
    Trk C H Γ0 s0 p0 PW (Γ.set i o') st := by
  have h' := trk_alloc hH hA h htm htg hp hm hgl hp' hord' hmo hd hbe
  have hpt : ptrsOf t = some p := by rw [← hp]; unfold ptrsOf gword; rw [htg]
  obtain ⟨p2, hp2, hm2, hx2, hnf2, hG2, hmod2, hpg2, hd2, hbe2⟩ := h'
  rw [hp'] at hp2; cases hp2
  obtain ⟨p1, hp1, hm1, -, -, hG1, -⟩ := h
  rw [hpt] at hp1; cases hp1
  have hG1c := hG1
  obtain ⟨q1, hq1, hord, hL1, -⟩ := hG1c
  rw [hpt] at hq1; cases hq1
  have hG2c := hG2
  obtain ⟨q2, hq2, -, hL2, -⟩ := hG2c
  rw [hp'] at hq2; cases hq2
  have hoi : Γ[i] ∈ Γ := List.getElem_mem hi
  have hlo : o'.lo = Γ[i].lo := by unfold Obj.lo; rw [hb]
  have hhi : Γ[i].hi ≤ o'.hi := by unfold Obj.hi; rw [hb]; omega
  have hend : o'.hi ≤ scratchEnd := by
    have h5 := hok.2.2.2.2
    obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord'
    unfold Obj.hi Obj.lo at *
    revert h5; cases (C.ty o'.ty).region <;> simp only [Region.Live] <;>
      unfold heapBase heapEnd scratchEnd at * <;> intro h5 <;> omega
  have hLn : Layout C p' (Γ.set i o') := by
    refine layout_set hL2 hi hok fun j hj hji => ?_
    have hd0 := hL1.2 j i hj hi hji
    have hszj := (hL1.1 _ (List.getElem_mem hj)).2.2.1
    rcases hd0 with h1 | h1
    · left; rw [hlo]; exact h1
    · by_cases hgrow : Γ[i].hi < o'.hi
      · have hfd := fresh_range_disj (b := Γ[i].hi) (n := o'.hi - Γ[i].hi) hord hord' hmo hL1
          (List.getElem_mem hj) (by omega) (by omega) (fun a h1 h2 => hfr a h1 (by omega))
        rcases hfd with h2 | h2
        · simp only [Obj.hi, Obj.lo] at h1 h2 hszj; omega
        · right; omega
      · right; omega
  have hGn : G C H (Γ.set i o') st := by
    refine G_of (D := fun _ => False) hH hM hG2 hp' hord' hLn (ext_set hi hb ht hs) rfl rfl
      (fun _ _ => rfl) (fun _ _ _ => rfl) (fun _ _ => rfl) ?_ ?_ ?_
    · intro x hx k hk
      rcases List.mem_or_eq_of_mem_set hx with hx | rfl
      · exact Or.inl ⟨x, hx, rfl, rfl, hk, id⟩
      · right; rw [hsc k]; trivial
    · intro x hx tag htg'
      rcases List.mem_or_eq_of_mem_set hx with hx | rfl
      · exact Or.inl ⟨x, hx, rfl, rfl, id⟩
      · rw [htag] at htg'; cases htg'
    · intro x hx
      rcases List.mem_or_eq_of_mem_set hx with hx | rfl
      · exact Or.inl ⟨x, hx, rfl, rfl, fun _ _ h => h⟩
      · exact Or.inr (hwf _ _ _ rfl)
  refine ⟨p', hp', hm2, ext_trans hx2 (ext_set hi hb ht hs), ?_, hGn, hmod2, hpg2, hd2, hbe2⟩
  intro x hx a h1 h2
  rcases List.mem_or_eq_of_mem_set hx with hx | rfl
  · exact hnf2 x hx a h1 h2
  · by_cases ha : a.toNat < Γ[i].hi
    · rcases hnf2 _ hoi a (by rw [← hlo]; exact h1) ha with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf
      · exact Or.inl ⟨o0, ho0, hb0.trans hb.symm, ht0.trans ht.symm, hl0, hh0⟩
      · exact Or.inr hf
    · exact Or.inr (fresh_mono_l hm1 hmo (hfr a (by omega) h2))

/-! ## Own writes to the stack/memory cells -/

/-- Own writes to slots `ks` of the running EV object and to stack/memory objects. -/
theorem trk_sm {T : STy} (hH : HooksLawful C H) (hE : EvCfg C T) (hK : EvHook C H T) {Γ : Gam}
    {t t' : State σ} {e : Obj} {ks : List Nat} (h : Trk C H Γ0 s0 p0 PW Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) (he : e ∈ Γ) (het : e.ty = T.ev)
    (hgl : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (hmod : ModifiesOnly (fun a => (∃ k ∈ ks, k ∈ smSlots ∧ a = e.cell k) ∨ InSM T Γ a)
      t.memory t'.memory)
    (hPW : ∀ k ∈ ks, PW (e.cell k)) (hsm : EvSM T Γ t'.memory e) :
    Trk C H Γ0 s0 p0 PW Γ t' := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod0, hpg, hd0, hbe0⟩ := h
  have hG' : G C H Γ t' := G_sm hH hE hK hG he het hgl hd hbe
    (hmod.mono fun a ha => ha.elim (fun ⟨k, _, hk, he'⟩ => Or.inl ⟨k, hk, he'⟩) Or.inr) hsm
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  rw [hp] at hq; cases hq
  refine ⟨p, by rw [← hp]; unfold ptrsOf gword; rw [hgl], hm, hx, hnf, hG', ?_,
    fun g hg => by rw [hgl]; exact hpg g hg, hd.trans hd0, hbe.trans hbe0⟩
  intro a ha
  have e1 : t'.memory a = t.memory a := by
    refine hmod a fun hc => ?_
    rcases hc with ⟨k, hk, -, rfl⟩ | hs
    · exact ha (Or.inr (Or.inr (hPW k hk)))
    · rcases wcell_back hord0 hord hm hL0 hL hnf (sCell_wCell (inSM_wcell hE hord hL hs)) with
        h' | h'
      · exact ha (Or.inl h')
      · exact ha (Or.inr (Or.inl h'))
  rw [e1, hmod0 a ha]

end trk

end InitECandidate.Solver.MemSafe.Struct
