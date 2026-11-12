import InitECandidate.Solver.MemSafe.Dn.Step

set_option autoImplicit false

/-!
# Store rules for the decoder

* `gp_stFr`: `st x + k, e` into an 88-byte record at `R` whose cells lie outside every `Γ` object
  and were not allocated at the activation's entry (the decoder's scratch records);
* `gp_stSC`: `st x + 8 j, e` into a `scalar` slot `j` of the `Γ` object at `X` (or `X` null: the
  store faults).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem flat_word (V : BitVec 64) : flattenHOL (ValueHOL.val (HolWordLab.word V) : ValueHOL 64) = [.word V] := by
  simp [flattenHOL]

/-- **A store into a fresh record cell.** -/
theorem gp_stFr {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {x : MlS} {k : Nat} {e : ExpHOL 64} {R : BitVec 64}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word R)))
    (hk : k + 8 ≤ 88) (hk8 : k % 8 = 0)
    (hB : ∀ Γ q M, E Γ q M → R.toNat % 8 = 0 ∧ R.toNat + 88 < 2 ^ 64 ∧
      ∀ y : BitVec 64, Overlap R.toNat 88 y → ¬ InObj Γ y.toNat ∧ ¬ a.p0.Allocated y.toNat)
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hE : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → E Γ q s.memory →
      ev s e = some (.val (.word V)) → E' Γ q (Struct.upd s.memory (R + BitVec.ofNat 64 k) V)) :
    HoareG σ X (GI a L E) (.store (.op .add [lv x, cw k]) e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  rw [ev_add_cw (hx _ hL) k] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  obtain ⟨hR8, hR88, hcells⟩ := hB Γ q s.memory hEs
  have he : (R + BitVec.ofNat 64 k).toNat = R.toNat + k := Spec.Mpt.Dec.toNat_add_lt (by omega)
  have hov : Overlap R.toNat 88 (R + BitVec.ofNat 64 k) := ⟨by rw [he]; omega, by rw [he]; omega,
    by rw [he]; omega⟩
  obtain ⟨hni, hna⟩ := hcells _ hov
  rw [flat_word] at hmem
  obtain ⟨hmod, -⟩ := Helpers.store1_mod hmem
  refine ⟨heap_store_out ha hh hmod hni hna, ?_⟩
  rw [hm]
  exact hE s Γ q V hL hEs hv'

/-- **A store into a `scalar` slot of a `Γ` object (or a null base: the store faults).** -/
theorem gp_stSC {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {x : MlS} {j : Nat} {e : ExpHOL 64} {B : BitVec 64}
    (hx : ∀ m, L m → m.lookup x = some (.val (.word B)))
    (hj : 8 * j + 8 < nullMax)
    (hobj : ∀ (s : State σ) Γ q, Heap a Γ q s → E Γ q s.memory → B.toNat < nullMax ∨
      ∃ o ∈ Γ, o.base = B ∧ o.HasSlot j ∧ (a.Cb.ty o.ty).slot j = .scalar)
    (hv : ∀ (s : State σ) v, L s.locals → ev s e = some v → ∃ V, v = .val (.word V))
    (hE : ∀ (s : State σ) Γ q (V : BitVec 64), L s.locals → E Γ q s.memory →
      ev s e = some (.val (.word V)) → E' Γ q (Struct.upd s.memory (B + BitVec.ofNat 64 (8 * j)) V)) :
    HoareG σ X (GI a L E) (.store (.op .add [lv x, cw (8 * j)]) e) (GP a L E' Rv) := by
  refine gp_store fun s Γ q hs hL hh hEs w v mem hw hv' hmem => ?_
  rw [ev_add_cw (hx _ hL) (8 * j)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  obtain ⟨V, rfl⟩ := hv s v hL hv'
  have hm := Struct.store_word hmem
  rw [flat_word] at hmem
  obtain ⟨hmod, hdom⟩ := Helpers.store1_mod hmem
  rcases hobj s Γ q hh hEs with hnull | ⟨o, ho, hb, hk, hsc⟩
  · exfalso
    have h1 := ns_of ha hs _ hdom
    have hlt : (B + BitVec.ofNat 64 (8 * j)).toNat < heapBase := by
      rw [Spec.Mpt.Dec.toNat_add_lt (by simp only [nullMax] at hnull hj; omega)]
      simp only [nullMax, heapBase] at hnull hj ⊢
      omega
    omega
  · refine ⟨heap_store_scell ha hh hmod fun y hy => ?_, ?_⟩
    · subst hy
      exact ⟨o, ho, j, hk, hsc, by rw [Obj.cell, hb]⟩
    · rw [hm]
      exact hE s Γ q V hL hEs hv'

/-- The `scalar` slots `1`, `2`, `3` of a node object. -/
theorem node_slot_ok {o : Obj} (ht : o.ty ∈ Node.nodeTys)
    (hsz : (Types.guestC.ty o.ty).minSz ≤ o.size) {j : Nat} (hj : 1 ≤ j ∧ j ≤ 3) :
    o.HasSlot j ∧ (Types.guestC.ty o.ty).slot j = .scalar := by
  simp only [Node.nodeTys, List.mem_cons, List.not_mem_nil, or_false] at ht
  obtain ⟨h1, h3⟩ := hj
  unfold Obj.HasSlot
  rcases ht with h | h | h | h <;> rw [h] at hsz ⊢
  · rw [Types.ty_NHASHED] at hsz ⊢
    simp only [Types.nhashedTy] at hsz
    interval_cases j <;> exact ⟨by omega, rfl⟩
  · rw [Types.ty_NLEAF] at hsz ⊢
    simp only [Types.nleafTy] at hsz
    interval_cases j <;> exact ⟨by omega, rfl⟩
  · rw [Types.ty_NEXT] at hsz ⊢
    simp only [Types.nextTy] at hsz
    interval_cases j <;> exact ⟨by omega, rfl⟩
  · rw [Types.ty_NBRANCH] at hsz ⊢
    simp only [Types.nbranchTy] at hsz
    interval_cases j <;> exact ⟨by omega, rfl⟩

/-- A `nodeU` word is null or the base of a node object. -/
theorem nodeU_cases {Γ : Gam} {w : BitVec 64} (h : Fits Γ Types.nodeU w) :
    w.toNat < nullMax ∨ ∃ o ∈ Γ, o.base = w ∧ o.ty ∈ Node.nodeTys := by
  rcases h with h | ⟨o, ho, hb, ht⟩
  · exact Or.inl h
  · exact Or.inr ⟨o, ho, hb, ht⟩

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.gp_stFr
#print axioms InitECandidate.Solver.MemSafe.Dn.gp_stSC
