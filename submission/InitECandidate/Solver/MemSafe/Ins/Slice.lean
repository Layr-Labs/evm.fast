import InitECandidate.Solver.MemSafe.Ins.CtorT

set_option autoImplicit false

/-!
# Slices of `NIn`: sub-slices, and the slice of a leaf / extension node
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- The nibble slice of a leaf / extension object of `Γ`, from the hook. -/
theorem slice_of_node {Γ : Gam} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) {N : BitVec 64}
    (ho : ∃ o ∈ Γ, o.base = N ∧ (o.ty = Types.tNLEAF ∨ o.ty = Types.tNEXT)) :
    NIn Γ (rd s.memory (N + 32)) (rd s.memory (N + 40)) := by
  obtain ⟨o, hoΓ, hb, hty⟩ := ho
  subst hb
  exact Hooks.nIn_of_node hG hoΓ hty

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_sub
#print axioms InitECandidate.Solver.MemSafe.Ins.slice_of_node
