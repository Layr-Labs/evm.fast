import InitECandidate.Solver.MemSafe.Struct.Eval

/-!
# Assembling summaries; writes to the running frame's stack/memory slots

* `cell_ne`: distinct slots of an object are distinct cells; `toNat_sub_one`.
* `evSM_upd`: `EvSM` after rewriting a single slot.
* **`G_sm`**: `G` after a memory change confined to the stack/memory cells of the running EV
  object and scalar cells of `Γ`, when the new `EvSM` holds (`G_frame_prot` plus `EvHook`).
* `sumCore_same`: `SumCore` when `Γ` and the allocator state are unchanged.
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type}

/-! ## Cell arithmetic -/

theorem cell_ne (o : Obj) {j k : Nat} (hj : j < 2 ^ 61) (hk : k < 2 ^ 61) (hjk : j ≠ k) :
    o.cell j ≠ o.cell k := by
  intro h
  have e := congrArg BitVec.toNat h
  simp only [Obj.cell, BitVec.toNat_add, BitVec.toNat_ofNat] at e
  have h1 : 8 * j % 2 ^ 64 = 8 * j := Nat.mod_eq_of_lt (by omega)
  have h2 : 8 * k % 2 ^ 64 = 8 * k := Nat.mod_eq_of_lt (by omega)
  rw [h1, h2] at e
  have hb := o.base.isLt
  by_cases hj' : o.base.toNat + 8 * j < 2 ^ 64 <;> by_cases hk' : o.base.toNat + 8 * k < 2 ^ 64
  · rw [Nat.mod_eq_of_lt hj', Nat.mod_eq_of_lt hk'] at e; omega
  · rw [Nat.mod_eq_of_lt hj', Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)] at e
    omega
  · rw [Nat.mod_eq_of_lt hk', Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)] at e
    omega
  · rw [Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega),
      Nat.mod_eq_sub_mod (by omega), Nat.mod_eq_of_lt (by omega)] at e
    omega

theorem toNat_sub_one {x : BitVec 64} (h : x ≠ 0) : (x - 1).toNat = x.toNat - 1 := by
  have h0 : x.toNat ≠ 0 := fun e => h (BitVec.eq_of_toNat_eq (by simpa using e))
  have hx := x.isLt
  rw [BitVec.toNat_sub]
  have h1 : (1 : BitVec 64).toNat = 1 := rfl
  rw [h1]
  omega

theorem toNat_add_small {x y : BitVec 64} (h : x.toNat + y.toNat < 2 ^ 64) :
    (x + y).toNat = x.toNat + y.toNat := by
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt h]

/-! ## Rewriting one slot of `EvSM` -/

theorem sm_mem {k : Nat} (hk : k ∈ smSlots) : k < 2 ^ 61 := by
  simp only [smSlots, List.mem_cons, List.not_mem_nil, or_false] at hk
  omega

/-- `EvSM` after a change of the stack/memory cells: given the new field values. -/
theorem evSM_of {T : STy} {Γ : Gam} {m m' : Mem} {e : Obj}
    (hsp : (fSP m' e).toNat ≤ (fCAP m' e).toNat) (hc0 : 0 < (fCAP m' e).toNat)
    (hc1 : (fCAP m' e).toNat ≤ 1024)
    (hstk : ∃ o ∈ Γ, o.base = fSTK m' e ∧ o.ty = T.stk ∧ 32 * (fCAP m' e).toNat ≤ o.size)
    (hlen : (fLEN m' e).toNat ≤ (fMCAP m' e).toNat) (hl32 : (fLEN m' e).toNat % 32 = 0)
    (hm8 : (fMCAP m' e).toNat % 8 = 0)
    (hmem : ∃ o ∈ Γ, o.base = fMEM m' e ∧ o.ty = T.mem ∧ (fMCAP m' e).toNat ≤ o.size) :
    EvSM T Γ m' e :=
  ⟨⟨hsp, hc0, hc1, hstk⟩, ⟨hlen, hl32, hm8, hmem⟩⟩

/-! ## Cells of stack and memory objects -/

/-- `a` is an aligned address inside a stack or memory object of `Γ`. -/
def InSM (T : STy) (Γ : Gam) (a : BitVec 64) : Prop :=
  a.toNat % 8 = 0 ∧ ∃ o ∈ Γ, (o.ty = T.stk ∨ o.ty = T.mem) ∧ o.lo ≤ a.toNat ∧ a.toNat < o.hi

/-- A slot cell of `o'` that lies inside `o` belongs to `o`. -/
theorem cell_in_obj {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ) {k : Nat} (hk : o'.HasSlot k)
    (h1 : o.lo ≤ (o'.cell k).toNat) (h2 : (o'.cell k).toNat < o.hi) : o = o' := by
  obtain ⟨hc, -⟩ := cell_toNat hord hL ho' hk
  rw [hc] at h1 h2
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  unfold Obj.HasSlot at hk
  by_cases hij : i = j
  · subst hij; rfl
  · have hd := hL.2 i j hi hj hij
    unfold Obj.lo Obj.hi at *
    omega

theorem inSM_slot {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {o' : Obj} (ho' : o' ∈ Γ) {k : Nat} (hk : o'.HasSlot k)
    (h : InSM T Γ (o'.cell k)) : (C.ty o'.ty).slot k = .scalar ∧ C.tags.lookup o'.ty = none := by
  obtain ⟨-, o, ho, hty, h1, h2⟩ := h
  have := cell_in_obj hord hL ho ho' hk h1 h2
  subst this
  rcases hty with ht | ht <;> rw [ht]
  · exact ⟨hE.stk_scalar k, hE.stk_tag⟩
  · exact ⟨hE.mem_scalar k, hE.mem_tag⟩

/-- `InSM` cells are writable (scalar) cells. -/
theorem inSM_wcell {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {a : BitVec 64} (h : InSM T Γ a) : SCell C Γ a := by
  obtain ⟨h8, o, ho, hty, h1, h2⟩ := h
  obtain ⟨k, hk, rfl⟩ := slot_of_in hord hL ho h8 h1 h2
  refine ⟨o, ho, k, hk, ?_, rfl⟩
  rcases hty with ht | ht <;> rw [ht]
  · exact hE.stk_scalar k
  · exact hE.mem_scalar k

theorem sCell_wCell {C : Cfg} {Γ : Gam} {a : BitVec 64} (h : SCell C Γ a) : WCell C Γ a := by
  obtain ⟨o, ho, k, hk, hs, rfl⟩ := h
  exact ⟨o, ho, k, hk, by rw [hs]; decide, rfl⟩

theorem smCell_prot {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ)
    {e : Obj} (he : e ∈ Γ) (het : e.ty = T.ev) {a : BitVec 64} (h : SMCell e a) :
    ProtCell C Γ a := by
  obtain ⟨k, hk, rfl⟩ := h
  refine ⟨e, he, k, ev_hasSlot hE hL he het ?_, het ▸ hE.ev_prot k hk, rfl⟩
  simp only [smSlots, List.mem_cons, List.not_mem_nil, or_false] at hk
  omega

/-- A `prot` cell is not inside a stack or memory object. -/
theorem prot_not_inSM {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {a : BitVec 64} (hp : ProtCell C Γ a) : ¬ InSM T Γ a := by
  obtain ⟨o, ho, k, hk, hpk, rfl⟩ := hp
  intro h
  rw [(inSM_slot hE hord hL ho hk h).1] at hpk
  cases hpk

/-- Stack/memory cells of `e` are not tags. -/
theorem smCell_ne_base {C : Cfg} {T : STy} (hE : EvCfg C T) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout C p Γ) {e o : Obj} (he : e ∈ Γ) (het : e.ty = T.ev)
    (ho : o ∈ Γ) (h : SMCell e o.base) : False := by
  obtain ⟨k, hk, hk1⟩ := h
  obtain ⟨h0, hc0⟩ := slot0 hL ho
  rw [← hc0] at hk1
  have hks : e.HasSlot k := ev_hasSlot hE hL he het (by
    simp only [smSlots, List.mem_cons, List.not_mem_nil, or_false] at hk; omega)
  obtain ⟨-, rfl⟩ := cell_inj hord hL ho he h0 hks hk1
  simp [smSlots] at hk

/-! ## `G` after writes to the running frame's stack/memory slots -/

/-- **`G` after a change confined to the stack/memory cells of `e` and to stack/memory objects**,
with the new `EvSM` of `e`. -/
theorem G_sm {C : Cfg} {H : Hooks σ} {T : STy} (hH : HooksLawful C H) (hE : EvCfg C T)
    (hK : EvHook C H T) {Γ : Gam} {s t : State σ} (hG : G C H Γ s) {e : Obj} (he : e ∈ Γ)
    (het : e.ty = T.ev) (hgl : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hbe : t.be = s.be)
    (hmod : ModifiesOnly (fun a => SMCell e a ∨ InSM T Γ a) s.memory t.memory)
    (hsm : EvSM T Γ t.memory e) : G C H Γ t := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hpt : ptrsOf t = some p := by rw [← hps]; unfold ptrsOf gword; rw [hgl]
  have hch : ∀ a, t.memory a ≠ s.memory a → SMCell e a ∨ InSM T Γ a := fun a hc => by
    by_contra hn; exact hc (hmod a hn)
  refine ⟨p, hpt, hord, hL, ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    by_cases hc : t.memory (o.cell k) = s.memory (o.cell k)
    · rw [rd, hc, ← rd]; exact hF o ho k hk
    · rcases hch _ hc with hs | hs
      · obtain ⟨o', ho', k', hk', hp', he'⟩ := smCell_prot hE hL he het hs
        obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he'
        rw [hp']; trivial
      · rw [(inSM_slot hE hord hL ho hk hs).1]; trivial
  · intro o ho tag htag
    have hnc : t.memory o.base = s.memory o.base := by
      by_contra hc
      rcases hch _ hc with hs | hs
      · exact smCell_ne_base hE hord hL he het ho hs
      · obtain ⟨h0, hc0⟩ := slot0 hL ho
        rw [← hc0] at hs
        rw [(inSM_slot hE hord hL ho h0 hs).2] at htag
        cases htag
    rw [rd, hnc, ← rd]
    exact hT o ho tag htag
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, by unfold gword; rw [hgl]; exact hv, hf⟩
  · intro o ho
    by_cases hx : ∃ a, H.fp Γ s o a ∧ t.memory a ≠ s.memory a
    · obtain ⟨a, ha, hne⟩ := hx
      have hpa := hH.1 Γ s o a ho (hW o ho) ha
      rcases hch _ hne with hs | hs
      · have := hK.loc Γ s o e a ho he het (hW o ho) ha hs
        subst this
        refine hK.put Γ s t o he het (hW o he) hsm hd hbe (fun g _ => by rw [hgl]) ?_
        intro b hb hnb
        by_contra hc
        rcases hch _ hc with hs' | hs'
        · exact hnb hs'
        · exact prot_not_inSM hE hord hL (hH.1 Γ s o b he (hW o he) hb) hs'
      · exact absurd hs (prot_not_inSM hE hord hL hpa)
    · exact (hH.2 Γ s t o (hW o ho) hd hbe (fun a ha => by
        by_contra hc; exact hx ⟨a, ha, hc⟩) (fun g _ => by rw [hgl])).1

/-! ## Assembling `SumCore` -/

/-- `SumCore` when `Γ` and the globals are unchanged and the memory changes only in writable
cells and declared protected cells. -/
theorem sumCore_same {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p : Ptrs}
    (hps : ptrsOf s = some p) (hgl : t.globals = s.globals) (hG : G C H Γ t)
    (hmod : ModifiesOnly (fun a => WCell C Γ a ∨ PW a) s.memory t.memory)
    (hret : ∀ v, r = .returned v → RetOK Γ p p vs sg.ret v) :
    SumCore C H sg PW Γ s vs r t Γ p p := by
  have hpt : ptrsOf t = some p := by rw [← hps]; unfold ptrsOf gword; rw [hgl]
  refine ⟨hps, hpt, mono_refl p, ext_refl Γ, newFresh_refl Γ p p, hG, ?_, ?_,
    fun _ => newFresh_refl Γ p p, hret⟩
  · exact hmod.mono fun a h => h.elim Or.inl (fun h => Or.inr (Or.inr (Or.inr h)))
  · intro g _ _; rw [hgl]

theorem retOK_nil {Γ : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)} (v : ValueHOL 64) :
    RetOK Γ p p' vs [] v := by
  intro i r w hr; simp at hr

end InitECandidate.Solver.MemSafe.Struct
