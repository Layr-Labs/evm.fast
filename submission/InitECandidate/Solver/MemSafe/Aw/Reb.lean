import InitECandidate.Solver.MemSafe.Aw.Hdr2

set_option autoImplicit false

/-!
# Rebasing the invariant to the current pointers

After an allocation the entry pointers `a.p0` are stale: a callee that needs `w + n ≤ heap_ptr` for a block
allocated earlier has no way to know the heap pointer has not gone down. `AwE.rebase a p''` has `p0 := p''`;
`awInv_rebase` / `awInv_unrebase` convert the invariant both ways (the cells allocated between `p0` and `p''` are
`≥ h0`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

def AwE.rebase (a : AwE σ) (p'' : Ptrs) : AwE σ := ⟨a.C, a.H, a.gw, a.s0, a.Γ0, p'', a.h0⟩

theorem awOK_rebase {a : AwE σ} (hK : AwOK a) {p'' : Ptrs} (hord : p''.Ordered)
    (hm : a.p0.Mono p'') : AwOK (a.rebase p'') := by
  refine ⟨hK.hH, hK.hT, hK.hAG, hK.h8, ?_, hord, hK.hbase⟩
  have := hK.hle
  unfold Ptrs.Mono at hm
  show a.h0 ≤ p''.hp
  omega

theorem awMod_sub {a : AwE σ} (hK : AwOK a) {p'' : Ptrs} (hord : p''.Ordered)
    (hm : a.p0.Mono p'') {x : BitVec 64} (h : AwMod a x) : AwMod (a.rebase p'') x := by
  rcases h with h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · by_cases hp : p''.Allocated x.toNat
    · left
      have h1 := hK.hle
      have h2 := hK.hord
      unfold Ptrs.Ordered at h2 hord
      unfold Ptrs.Mono at hm
      unfold Ptrs.Allocated at h hp
      show a.h0 ≤ x.toNat
      omega
    · exact Or.inr (Or.inr hp)

theorem awMod_super {a : AwE σ} {p'' : Ptrs} (hm : a.p0.Mono p'') {x : BitVec 64}
    (h : AwMod (a.rebase p'') x) : AwMod a x := by
  rcases h with h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (fun hx => h (allocated_mono' hm hx)))

theorem awInv_rebase {a : AwE σ} (hK : AwOK a) {t : State σ} (h : AwInv a t) {p'' : Ptrs}
    (hp : ptrsOf t = some p'') : AwInv (a.rebase p'') t := by
  obtain ⟨Γ', p', hG, hp', e1, e2, e3, e4, e5, e6⟩ := h
  rw [hp] at hp'
  cases hp'
  have hord : p''.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  refine ⟨Γ', p'', hG, hp, e1, e2, e3, ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩, ?_, e6⟩
  intro x hx
  have hnm : ¬ AwMod a x := fun hh => hx (awMod_sub hK hord e4 hh)
  rw [e5 x hnm]; rfl

theorem awInv_unrebase {a : AwE σ} {t : State σ} {p'' : Ptrs} (hm : a.p0.Mono p'')
    (h : AwInv (a.rebase p'') t) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp', e1, e2, e3, e4, e5, e6⟩ := h
  refine ⟨Γ', p', hG, hp', e1, e2, e3, mono_trans' hm e4, ?_, e6⟩
  intro x hx
  exact e5 x (fun hh => hx (awMod_super hm hh))

end InitECandidate.Solver.MemSafe.Aw
