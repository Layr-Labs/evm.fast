import InitECandidate.Solver.MemSafe.Frames.NewCode
import InitECandidate.Solver.MemSafe.LogDefs

/-!
# `frame_new`: tracking the body

* `G_addObjL`, `trk_addObjL`: a fresh, disjoint object with fitting slots joins `Γ`; its hook
  may use the layout of the extended typing (the EV hook needs `GamOK`).
* `FBlk`: the EV block (aligned, inside scratch, outside `Γ`, unallocated at entry, live now).
* `FNM`: `Trk` (no protected writes) ∧ `FBlk` ∧ the fields stored so far (each fitting its EV slot
  kind) ∧ objects known to be in `Γ` ∧ the value of `frame_mem_ptr`; `FNS` adds word locals.
* `fnm_congr`, `fnm_store`, `fnm_call` (a summarized call keeps the block and its fields),
  `fns_store` (the `HoareG` rule of a block store), `fns_bind`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## Adding an object whose hook needs the layout -/

theorem G_addObjL {C : Cfg} {H : Hooks σ} (hM : HooksMono C H)
    {Γ : Gam} {s : State σ} (hG : G C H Γ s) {x : Obj} (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0)
    (hpos : 0 < x.size) (hmin : (C.ty x.ty).minSz ≤ x.size)
    (hlive : ∀ p, ptrsOf s = some p → (C.ty x.ty).region.Live p x.lo x.size)
    (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γ ++ [x]) ((C.ty x.ty).slot k) (rd s.memory (x.cell k)))
    (htag : C.tags.lookup x.ty = none)
    (hwf : ∀ p, Layout C p (Γ ++ [x]) → H.wf (Γ ++ [x]) s x) :
    G C H (Γ ++ [x]) s := by
  obtain ⟨p, hps, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hs : scratchEnd < 2 ^ 64 := by decide
  have hL' : Layout C p (Γ ++ [x]) := by
    refine ⟨fun o ho => ?_, fun i j hi hj hij => ?_⟩
    · rcases List.mem_append.mp ho with ho | ho
      · exact hL.1 o ho
      · simp only [List.mem_singleton] at ho
        subst ho
        exact ⟨hal, hsz8, hpos, hmin, hlive p hps⟩
    · have hxe : x.hi ≤ scratchEnd := by
        have := hlive p hps
        unfold Obj.lo at this
        unfold Ptrs.Ordered at hord
        unfold Obj.hi
        cases hr : (C.ty x.ty).region <;> rw [hr] at this <;> unfold Region.Live at this <;> omega
      have hdx : ∀ o ∈ Γ, o.hi ≤ x.lo ∨ x.hi ≤ o.lo := by
        intro o ho
        have ho' := (hL.1 o ho).2.2.1
        have hoe := obj_hi hord hL ho
        have := range_disj (lo := x.lo) (hi := x.hi) (lo' := o.lo) (hi' := o.hi)
          (by unfold Obj.hi Obj.lo; omega) (by unfold Obj.hi Obj.lo; omega) (by omega) (by omega)
          (fun a h1 h2 h3 => hdisj a ⟨h1, h2⟩ ⟨o, ho, h3.1, h3.2⟩)
        rcases this with h | h
        · exact Or.inr h
        · exact Or.inl h
      by_cases hi' : i < Γ.length <;> by_cases hj' : j < Γ.length
      · rw [List.getElem_append_left hi', List.getElem_append_left hj']
        exact hL.2 i j hi' hj' hij
      · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
        have hj2 : j = Γ.length := by omega
        subst hj2
        rw [List.getElem_append_left hi', List.getElem_append_right (by omega)]
        simp only [Nat.sub_self, List.getElem_cons_zero]
        exact hdx _ (List.getElem_mem hi')
      · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
        have hi2 : i = Γ.length := by omega
        subst hi2
        rw [List.getElem_append_left hj', List.getElem_append_right (by omega)]
        simp only [Nat.sub_self, List.getElem_cons_zero]
        exact (hdx _ (List.getElem_mem hj')).symm
      · have hlen : (Γ ++ [x]).length = Γ.length + 1 := by simp
        omega
  refine ⟨p, hps, hord, hL', ?_, ?_, ?_, ?_⟩
  · intro o ho k hk
    rcases List.mem_append.mp ho with ho | ho
    · exact fits_append (hF o ho k hk)
    · simp only [List.mem_singleton] at ho; subst ho; exact hfit k hk
  · intro o ho tag ht
    rcases List.mem_append.mp ho with ho | ho
    · exact hT o ho tag ht
    · simp only [List.mem_singleton] at ho; subst ho; rw [htag] at ht; cases ht
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, hv, fits_append hf⟩
  · intro o ho
    rcases List.mem_append.mp ho with ho | ho
    · exact hM Γ (Γ ++ [x]) s p o o hL' (ext_append Γ x) ho (List.mem_append_left _ ho) rfl rfl
        (hW o ho)
    · simp only [List.mem_singleton] at ho; subst ho; exact hwf p hL'

section trkx
variable {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

theorem trk_addObjL (hM : HooksMono C H) {Γ : Gam} {t : State σ}
    (h : Trk C H Γ0 s0 p0 PW Γ t) {x : Obj} {p : Ptrs} (hp : ptrsOf t = some p)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hpos : 0 < x.size)
    (hmin : (C.ty x.ty).minSz ≤ x.size) (hlive : (C.ty x.ty).region.Live p x.lo x.size)
    (hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p0 p a)
    (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat)
    (hfit : ∀ k, x.HasSlot k → Fits (Γ ++ [x]) ((C.ty x.ty).slot k) (rd t.memory (x.cell k)))
    (htag : C.tags.lookup x.ty = none)
    (hwf : ∀ p, Layout C p (Γ ++ [x]) → H.wf (Γ ++ [x]) t x) : Trk C H Γ0 s0 p0 PW (Γ ++ [x]) t := by
  obtain ⟨p', hp', hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  rw [hp] at hp'
  cases hp'
  refine ⟨p, hp, hm, ext_trans hx (ext_append Γ x), ?_,
    G_addObjL hM hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive) hdisj
      hfit htag hwf, hmod, hpg, hd, hbe⟩
  intro o ho a h1 h2
  rcases List.mem_append.mp ho with ho | ho
  · rcases hnf o ho a h1 h2 with h' | h'
    · exact Or.inl h'
    · exact Or.inr h'
  · simp only [List.mem_singleton] at ho
    subst ho
    exact Or.inr (hfr a h1 h2)

end trkx

/-! ## The tracking state -/

/-- The EV block `[e, e + 280)`. -/
def FBlk (p0 : Ptrs) (e : BitVec 64) (Γ : Gam) (u : State σ) : Prop :=
  e.toNat % 8 = 0 ∧ e.toNat + 280 ≤ scratchEnd ∧
  (∀ a : BitVec 64, e.toNat ≤ a.toNat → a.toNat < e.toNat + 280 →
    ¬ InObj Γ a.toNat ∧ ¬ p0.Allocated a.toNat) ∧
  ∀ p, ptrsOf u = some p → p.sp ≤ e.toNat

/-- The slot kind of EV offset `k`. -/
def evK (k : Nat) : FK := (guestC.ty tEV).slot (k / 8)

/-- The memory / globals part of the tracking state. -/
def FNM (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e : BitVec 64)
    (L : List (Nat × BitVec 64)) (obs : List (BitVec 64 × Nat × Nat)) (F : BitVec 64) (Γ : Gam)
    (u : State σ) : Prop :=
  Trk guestC H Γ0 s0 p0 (fun _ => False) Γ u ∧ FBlk p0 e Γ u ∧
  (∀ kx ∈ L, kx.1 < 280 ∧ kx.1 % 8 = 0 ∧ fld u.memory e kx.1 = kx.2 ∧ Fits Γ (evK kx.1) kx.2) ∧
  (∀ ob ∈ obs, ∃ o ∈ Γ, o.base = ob.1 ∧ o.ty = ob.2.1 ∧ ob.2.2 ≤ o.size ∧
    (o.ty = tLSTs → LgEmp Γ u.memory o)) ∧
  gword u gFrame = some F

/-- The tracking state with word locals `lw`. -/
def FNS (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e : BitVec 64)
    (lw : List (MlS × BitVec 64)) (L : List (Nat × BitVec 64)) (obs : List (BitVec 64 × Nat × Nat))
    (F : BitVec 64) (Γ : Gam) (u : State σ) : Prop :=
  FNM H Γ0 s0 p0 e L obs F Γ u ∧ ∀ xw ∈ lw, u.locals.lookup xw.1 = some (.val (.word xw.2))

section fn
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e : BitVec 64}
  {L : List (Nat × BitVec 64)} {obs : List (BitVec 64 × Nat × Nat)} {F : BitVec 64}

theorem e_off {k : Nat} (he : e.toNat + 280 ≤ scratchEnd) (hk : k < 280) :
    (e + BitVec.ofNat 64 k).toNat = e.toNat + k := by
  have : scratchEnd < 2 ^ 64 := by decide
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
    Nat.mod_eq_of_lt (by omega)]

theorem e_off_ne {k k' : Nat} (he : e.toNat + 280 ≤ scratchEnd) (hk : k < 280) (hk' : k' < 280)
    (h : k ≠ k') : e + BitVec.ofNat 64 k ≠ e + BitVec.ofNat 64 k' := by
  intro hc
  have := congrArg BitVec.toNat hc
  rw [e_off he hk, e_off he hk'] at this
  omega

theorem fnm_congr (hH : HooksLawful guestC H) {Γ : Gam} {u u' : State σ}
    (h : FNM H Γ0 s0 p0 e L obs F Γ u) (hm : u'.memory = u.memory) (hg : u'.globals = u.globals)
    (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) : FNM H Γ0 s0 p0 e L obs F Γ u' := by
  obtain ⟨hT, ⟨h1, h2, h3, h4⟩, hL, hO, hF⟩ := h
  refine ⟨trk_congr hH hT hm hg hd hbe, ⟨h1, h2, h3, fun p hp => h4 p (by rw [← hp,
    ptrsOf_congr hg])⟩, fun kx hkx => ?_, fun ob hob => ?_, by rw [gword_congr hg]; exact hF⟩
  · obtain ⟨a, b, c, d⟩ := hL kx hkx
    exact ⟨a, b, by unfold fld; rw [hm]; exact c, d⟩
  obtain ⟨o, ho, hb, ht, hs, he⟩ := hO ob hob
  exact ⟨o, ho, hb, ht, hs, fun h => lgEmp_congr (he h) (by rw [hm]) (by rw [hm])⟩

/-- A store outside `Γ` keeps `LgEmp`. -/
theorem lgEmp_upd {p : Ptrs} {Γ : Gam} {m : Mem} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {o : Obj} (ho : o ∈ Γ) (hty : o.ty = tLSTs) {a x : BitVec 64} (ha : ¬ InObj Γ a.toNat)
    (h : LgEmp Γ m o) : LgEmp Γ (upd m a x) o :=
  lgEmp_congr h
    (rd_upd_ne m x (fun he => ha (he ▸ cell_in hord hL ho (lgEmp_slot hL ho hty (by omega)))))
    (rd_upd_ne m x (fun he => ha (he ▸ cell_in hord hL ho (lgEmp_slot hL ho hty (by omega)))))

theorem fnm_store (hH : HooksLawful guestC H) {Γ : Gam} {u : State σ}
    (h : FNM H Γ0 s0 p0 e L obs F Γ u) {k : Nat} (hk : k < 280) (hk8 : k % 8 = 0)
    (hnd : ∀ kx ∈ L, kx.1 ≠ k) {x : BitVec 64} (hx : Fits Γ (evK k) x) :
    FNM H Γ0 s0 p0 e ((k, x) :: L) obs F Γ
      { u with memory := upd u.memory (e + BitVec.ofNat 64 k) x } := by
  obtain ⟨hT, ⟨h1, h2, h3, h4⟩, hL, hO, hF⟩ := h
  have hek := e_off h2 hk
  have hb := h3 (e + BitVec.ofNat 64 k) (by rw [hek]; omega) (by rw [hek]; omega)
  obtain ⟨q, hq, hord, hLay, -⟩ := trk_G hT
  refine ⟨trk_tmp hH hT hb.1 hb.2 x, ⟨h1, h2, h3, h4⟩, fun kx hkx => ?_, fun ob hob => ?_, hF⟩
  · rcases List.mem_cons.mp hkx with rfl | hkx
    · exact ⟨hk, hk8, fld_upd_eq _, hx⟩
    · obtain ⟨a, b, c, d⟩ := hL kx hkx
      refine ⟨a, b, ?_, d⟩
      rw [fld_upd_ne _ (e_off_ne h2 a hk (hnd kx hkx))]
      exact c
  · obtain ⟨o, ho, hb', ht, hs, he⟩ := hO ob hob
    exact ⟨o, ho, hb', ht, hs, fun hty => lgEmp_upd hord hLay ho hty hb.1 (he hty)⟩

/-- **A summarized call** keeps the tracking state: the EV block lies in allocated space outside
`Γ`, so the callee neither writes it nor lays an object over it. -/
theorem fnm_call (hH : HooksLawful guestC H) (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {Γ : Gam} {u u' : State σ} (h : FNM H Γ0 s0 p0 e L obs F Γ u)
    (hum : u'.memory = u.memory) (hug : u'.globals = u.globals)
    {sg : Sig} {PW' : BitVec 64 → Prop} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    {st : State σ} {Γ' : Gam} {p p' : Ptrs}
    (hc : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW' a) Γ u' vs r st Γ' p p')
    (hgw : sg.gw = []) (hAC : ∀ a, ¬ ArgCells sg.params vs a) (hPW : ∀ a, ¬ PW' a)
    (hfp : st.globals.lookup gFrame = u.globals.lookup gFrame)
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    FNM H Γ0 s0 p0 e L obs F Γ' st := by
  obtain ⟨hT, ⟨h1, h2, h3, h4⟩, hL, hO, hF⟩ := h
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := hG0
  rw [hp0] at hq0
  cases hq0
  have c1 := hc.1
  have c2 := hc.2.1
  have c3 := hc.2.2.1
  have c4 := hc.2.2.2.1
  have c5 := hc.2.2.2.2.1
  have c6 := hc.2.2.2.2.2.1
  have c7 := hc.2.2.2.2.2.2.1
  have hT' := trk_call hT hord0 hL0 hum hug hc (fun g _ => by simp [hgw])
    (fun a ha => absurd ha (hAC a)) (fun a _ ha => absurd ha (hPW a)) hd hbe
  have hpu : ptrsOf u = some p := by rw [← c1, ptrsOf_congr hug]
  obtain ⟨q, hq, hordp, hLp, -⟩ := trk_G hT
  rw [hpu] at hq
  cases hq
  obtain ⟨q', hq', hordp', -⟩ := c6
  rw [c2] at hq'
  cases hq'
  have hsp := h4 p hpu
  have hallo : ∀ a : BitVec 64, e.toNat ≤ a.toNat → a.toNat < e.toNat + 280 →
      p.Allocated a.toNat := fun a ha1 ha2 => Or.inr (Or.inr ⟨by omega, by omega⟩)
  have hkeep : ∀ a : BitVec 64, e.toNat ≤ a.toNat → a.toNat < e.toNat + 280 →
      st.memory a = u.memory a := by
    intro a ha1 ha2
    rw [← hum]
    refine c7 a ?_
    rintro (⟨o, ho, k, hk, -, rfl⟩ | hac | hna | ⟨-, hpw⟩)
    · exact (h3 _ ha1 ha2).1 (cell_in hordp hLp ho hk)
    · exact hAC _ hac
    · exact hna (hallo _ ha1 ha2)
    · exact hPW _ hpw
  refine ⟨hT', ⟨h1, h2, fun a ha1 ha2 => ⟨fun ⟨o, ho, ho1, ho2⟩ => ?_, (h3 a ha1 ha2).2⟩,
    fun pp hpp => ?_⟩, fun kx hkx => ?_, fun ob hob => ?_, ?_⟩
  · rcases c5 o ho a ho1 ho2 with ⟨o0, ho0, -, -, h1', h2'⟩ | hf
    · exact (h3 a ha1 ha2).1 ⟨o0, ho0, h1', h2'⟩
    · exact fresh_notAlloc hordp hordp' c3 hf (hallo a ha1 ha2)
  · rw [c2] at hpp
    cases hpp
    have := c3.2.2
    omega
  · obtain ⟨a, b, c, d⟩ := hL kx hkx
    refine ⟨a, b, ?_, Struct.fits_ext c4 d⟩
    have hek := e_off (k := kx.1) h2 a
    unfold fld rd
    rw [hkeep _ (by rw [hek]; omega) (by rw [hek]; omega)]
    exact c
  · obtain ⟨o, ho, hb, ht, hs, he⟩ := hO ob hob
    obtain ⟨o', ho', hb', ht', hs'⟩ := c4 o ho
    refine ⟨o', ho', hb'.trans hb, ht'.trans ht, le_trans hs hs', fun hty => ?_⟩
    have hty' : o.ty = tLSTs := by rw [← ht']; exact hty
    have hk01 : ∀ k, k < 2 → st.memory (o.cell k) = u.memory (o.cell k) := by
      intro k hk
      have hks := lgEmp_slot hLp ho hty' hk
      have hpr : (guestC.ty o.ty).slot k = .prot := by rw [hty']; exact lsts_prot k
      have : st.memory (o.cell k) = u'.memory (o.cell k) := by
        refine c7 _ ?_
        rintro (⟨o2, ho2, k2, hk2, hnp, he2⟩ | hac | hna | ⟨-, hpw⟩)
        · obtain ⟨rfl, rfl⟩ := cell_inj hordp hLp ho ho2 hks hk2 he2
          exact hnp hpr
        · exact hAC _ hac
        · exact hna (Helpers.allocated_of_inObj hLp (cell_in hordp hLp ho hks))
        · exact hPW _ hpw
      rw [this, hum]
    have hr : ∀ k, k < 2 → rd st.memory (o.cell k) = rd u.memory (o.cell k) := fun k hk => by
      unfold rd; rw [hk01 k hk]
    exact lgEmp_ext (lgEmp_congr (he hty') (hr 0 (by omega)) (hr 1 (by omega))) c4 hb'
  · unfold gword
    rw [hfp]
    exact hF

/-- A store into the EV block (a `HoareG` rule): the stored word, fitting its slot kind and
satisfying `R`, is recorded. -/
theorem fns_store (hH : HooksLawful guestC H) {lw : List (MlS × BitVec 64)} {Γ : Gam} {k : Nat}
    {ve : ExpHOL 64} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (he : (nm "e", e) ∈ lw) (hk : k < 280) (hk8 : k % 8 = 0) (hnd : k ∉ L.map Prod.fst)
    {R : BitVec 64 → Prop}
    (hv : ∀ u, InCtx u X → FNS H Γ0 s0 p0 e lw L obs F Γ u → ∀ v, ev u ve = some v →
      ∃ x, v = .val (.word x) ∧ Fits Γ (evK k) x ∧ R x)
    (hc : ∀ x, R x → HoareG σ X (FNS H Γ0 s0 p0 e lw ((k, x) :: L) obs F Γ) c Q) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) (.seq (stL "e" k ve) c) Q := by
  refine hoareG_seq (R := fun r u => r = none ∧ ∃ x, R x ∧
      FNS H Γ0 s0 p0 e lw ((k, x) :: L) obs F Γ u) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stL fun u hu ⟨hN, hlw⟩ B v hB hv' => ?_
    rw [hlw _ he] at hB
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hB
    subst hB
    obtain ⟨x, rfl, hfx, hRx⟩ := hv u hu ⟨hN, hlw⟩ v hv'
    refine ⟨x, rfl, fun _ => ⟨rfl, x, hRx, fnm_store hH hN hk hk8 (fun kx hkx hke => ?_) hfx, hlw⟩⟩
    exact hnd (hke ▸ List.mem_map_of_mem hkx)
  · intro s hs ⟨_, x, hRx, hN⟩ hg
    exact hc x hRx s hs hN hg

theorem fns_bind (hH : HooksLawful guestC H) {lw : List (MlS × BitVec 64)} {Γ : Gam}
    {u st : State σ} (h : FNM H Γ0 s0 p0 e L obs F Γ st)
    (hlw : ∀ xw ∈ lw, u.locals.lookup xw.1 = some (.val (.word xw.2))) {x : MlS}
    (hx : ∀ xw ∈ lw, x ≠ xw.1) (w : BitVec 64) :
    FNS H Γ0 s0 p0 e ((x, w) :: lw) L obs F Γ
      (setVarHOLFinite x (.val (.word w)) { st with locals := u.locals }) := by
  refine ⟨fnm_congr hH h rfl rfl rfl rfl, fun xw hxw => ?_⟩
  rcases List.mem_cons.mp hxw with rfl | hxw
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (hx xw hxw)]
    exact hlw xw hxw

/-- A store that leaves the tracking state with other locals (the post is locals-blind). -/
theorem fns_decCall (hH : HooksLawful guestC H) {lw : List (MlS × BitVec 64)} {Γ : Gam}
    {x f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Rf : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQl : ∀ r t (l : Locs), Q r t → Q r { t with locals := l })
    (hQa : ∀ r t, MemSafe.Abn r → Q (some r) t)
    (hf : FunSpec σ X f Rf) (hx : ∀ xw ∈ lw, x ≠ xw.1) {Pk : BitVec 64 → Gam → Prop}
    (hstep : ∀ u, InCtx u X → FNS H Γ0 s0 p0 e lw L obs F Γ u → ∀ vs, evs u args = some vs →
      ∀ callee w st, Rf vs (callEntryStateHOLFinite u callee) (.returned (.val (.word w))) st →
        ∃ Γ', FNM H Γ0 s0 p0 e L obs F Γ' st ∧ Pk w Γ')
    (hk : ∀ w Γ', Pk w Γ' → HoareG σ X (FNS H Γ0 s0 p0 e ((x, w) :: lw) L obs F Γ') k Q) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) (.decCall x .one f args k) Q := by
  refine hoareG_decCall hf ?_ (fun s _ _ vs _ callee r st _ _ habn => hQa r _ habn)
  intro u hu hN vs hvs callee v st hR _ hsh
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨Γ', hM', hP⟩ := hstep u hu hN vs hvs callee w st hR
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun r t _ _ h => hQl r t _ h)
  refine hoareG_pre (hk w Γ' hP) (fun t _ ht => ?_)
  subst ht
  exact fns_bind hH hM' hN.2 hx w

/-- **`fns_decCall` that also records a new object** (frames8 / package L): the call returns a word
`w`, and the object `ob w` (base, type, size) joins `obs`; the step proves the extended
tracking state. -/
theorem fns_decCallO (hH : HooksLawful guestC H) {lw : List (MlS × BitVec 64)} {Γ : Gam}
    {x f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Rf : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQl : ∀ r t (l : Locs), Q r t → Q r { t with locals := l })
    (hQa : ∀ r t, MemSafe.Abn r → Q (some r) t)
    (hf : FunSpec σ X f Rf) (hx : ∀ xw ∈ lw, x ≠ xw.1) {Pk : BitVec 64 → Gam → Prop}
    {ob : BitVec 64 → BitVec 64 × Nat × Nat}
    (hstep : ∀ u, InCtx u X → FNS H Γ0 s0 p0 e lw L obs F Γ u → ∀ vs, evs u args = some vs →
      ∀ callee w st, Rf vs (callEntryStateHOLFinite u callee) (.returned (.val (.word w))) st →
        ∃ Γ', FNM H Γ0 s0 p0 e L (ob w :: obs) F Γ' st ∧ Pk w Γ')
    (hk : ∀ w Γ', Pk w Γ' →
      HoareG σ X (FNS H Γ0 s0 p0 e ((x, w) :: lw) L (ob w :: obs) F Γ') k Q) :
    HoareG σ X (FNS H Γ0 s0 p0 e lw L obs F Γ) (.decCall x .one f args k) Q := by
  refine hoareG_decCall hf ?_ (fun s _ _ vs _ callee r st _ _ habn => hQa r _ habn)
  intro u hu hN vs hvs callee v st hR _ hsh
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨Γ', hM', hP⟩ := hstep u hu hN vs hvs callee w st hR
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun r t _ _ h => hQl r t _ h)
  refine hoareG_pre (hk w Γ' hP) (fun t _ ht => ?_)
  subst ht
  exact fns_bind hH hM' hN.2 hx w

/-- Writes confined to a block outside `Γ`, unallocated at entry. -/
theorem trk_blkmod (hH : HooksLawful guestC H) {Γ : Gam} {t t' : State σ}
    (h : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ t) {B : BitVec 64 → Prop}
    (hB : ∀ a, B a → ¬ InObj Γ a.toNat ∧ ¬ p0.Allocated a.toNat)
    (hmod : ModifiesOnly B t.memory t'.memory) (hg : t'.globals = t.globals)
    (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be) :
    Trk guestC H Γ0 s0 p0 (fun _ => False) Γ t' := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod0, hpg, hd0, hbe0⟩ := h
  refine ⟨p, by rw [ptrsOf_congr hg]; exact hp, hm, hx, hnf,
    G_frame hH hG (ptrsOf_congr hg) (fun g _ _ => gword_congr hg g) (fun g _ => by rw [hg]) hd hbe
      (fun b hb => hmod b fun hb' => (hB b hb').1 hb), fun b hb => ?_,
    fun g hg' => by rw [hg]; exact hpg g hg', hd.trans hd0, hbe.trans hbe0⟩
  rw [hmod b fun hb' => hb (Or.inr (Or.inl (hB b hb').2))]
  exact hmod0 b hb

/-- A `prot` slot of an entry object keeps its entry value. -/
theorem trk_fld_prot {Γ : Gam} {u : State σ} (h : Trk guestC H Γ0 s0 p0 (fun _ => False) Γ u)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) {o : Obj} (ho : o ∈ Γ0) {k : Nat}
    (hk : o.HasSlot k) (hpr : (guestC.ty o.ty).slot k = .prot) :
    fld u.memory o.base (8 * k) = fld s0.memory o.base (8 * k) := by
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨-, -, -, -, -, -, hmod, -⟩ := h
  have := hmod (o.cell k) (fun hc => prot_not_foot (ps := []) (vs := []) hord0 hL0
    (fun _ h => by cases h) ho hk hpr (by
      rcases hc with hc | hc | hc
      · exact Or.inl hc
      · exact Or.inr (Or.inr (Or.inl hc))
      · exact hc.elim))
  unfold fld rd
  unfold Obj.cell at this
  rw [this]

theorem ev_ldL {u : State σ} {x : String} {B : BitVec 64} {k : Nat} {v : ValueHOL 64}
    (hl : u.locals.lookup (nm x) = some (.val (.word B))) (hv : ev u (ldL x k) = some v) :
    v = .val (.word (fld u.memory B k)) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lw hl) (ev_cw u k)] at hw
  cases hw
  rw [mem_rd u.memory (B + BitVec.ofNat 64 k)]
  rfl

/-- An allocator call whose block becomes a new all-scalar object. -/
theorem fnm_allocObj (hH : HooksLawful guestC H) (hM : HooksMono guestC H) (hA : AllocG guestC)
    {Γ : Gam} {u st : State σ} {rg : Region} {p p' : Ptrs} {q : BitVec 64} {n ty : Nat}
    {F' : BitVec 64} (h : FNM H Γ0 s0 p0 e L obs F Γ u) (hpu : ptrsOf u = some p)
    (hm : st.memory = u.memory) (hgl : ∀ g, g ≠ rg.global → st.globals.lookup g = u.globals.lookup g)
    (hp' : ptrsOf st = some p') (hord' : p'.Ordered) (hmo : p.Mono p')
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be)
    (hq8 : q.toNat % 8 = 0) (hn8 : n % 8 = 0) (hn0 : 0 < n) (hmin : (guestC.ty ty).minSz ≤ n)
    (hreg : (guestC.ty ty).region = rg) (hlive : rg.Live p' q.toNat n)
    (hna : ∀ a, q.toNat ≤ a → a < q.toNat + n → ¬ p.Allocated a)
    (hsc : ∀ k, (guestC.ty ty).slot k = .scalar) (htag : guestC.tags.lookup ty = none)
    (hwf : ∀ Γ (s : State σ) o, o.ty = ty → H.wf Γ s o) (hF' : gword st gFrame = some F')
    (hnl : ty ≠ tLSTs := by decide) :
    FNM H Γ0 s0 p0 e L ((q, ty, n) :: obs) F' (Γ ++ [⟨q, ty, n⟩]) st := by
  obtain ⟨hT, ⟨h1, h2, h3, h4⟩, hL, hO, -⟩ := h
  have hsp := h4 p hpu
  refine ⟨trk_alloc_obj hH hM hA hT rfl rfl hpu hm hgl hp' hord' hmo hd hbe hq8 hn8 hn0 hmin hreg
    hlive hna hsc htag hwf, ⟨h1, h2, fun a ha1 ha2 => ⟨fun ⟨o, ho, ho1, ho2⟩ => ?_,
      (h3 a ha1 ha2).2⟩, fun pp hpp => ?_⟩, fun kx hkx => ?_, fun ob hob => ?_, hF'⟩
  · rcases List.mem_append.mp ho with ho | ho
    · exact (h3 a ha1 ha2).1 ⟨o, ho, ho1, ho2⟩
    · simp only [List.mem_singleton] at ho
      subst ho
      exact hna a.toNat ho1 ho2 (Or.inr (Or.inr ⟨by omega, by omega⟩))
  · rw [hp'] at hpp
    cases hpp
    have := hmo.2.2
    omega
  · obtain ⟨a, b, c, d⟩ := hL kx hkx
    exact ⟨a, b, by unfold fld; rw [hm]; exact c, fits_append d⟩
  · rcases List.mem_cons.mp hob with rfl | hob
    · exact ⟨⟨q, ty, n⟩, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl, le_refl _,
        fun hty => absurd hty hnl⟩
    · obtain ⟨o, ho, hb, ht, hs, he⟩ := hO ob hob
      refine ⟨o, List.mem_append_left _ ho, hb, ht, hs, fun hty => ?_⟩
      exact lgEmp_ext (lgEmp_congr (he hty) (by rw [hm]) (by rw [hm])) (ext_append Γ ⟨q, ty, n⟩) rfl

end fn

/-! ## Hook requirements of `frame_new` -/

/-- What `frame_new` needs of the hooks: an EV record's hook is established by the stack /
memory invariant (given the layout), and stack, memory and list objects have trivial hooks. -/
structure NewHooks (H : Hooks σ) : Prop where
  ev : ∀ (Γ : Gam) (s : State σ) (o : Obj) (p : Ptrs), Layout guestC p Γ → o ∈ Γ → o.ty = tEV →
    EvSM Shards.sty Γ s.memory o → H.wf Γ s o
  triv : ∀ (Γ : Gam) (s : State σ) (o : Obj),
    o.ty = tSTACK ∨ o.ty = tMEM ∨ o.ty = tLSTs ∨ o.ty = tLSTAs → H.wf Γ s o


end InitECandidate.Solver.MemSafe.Frames
