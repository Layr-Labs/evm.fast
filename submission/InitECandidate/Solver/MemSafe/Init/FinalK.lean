import InitECandidate.Solver.MemSafe.Init.Fold

/-! Exact arithmetic bound and a conservative short-decimal public claim.
The rounded claim avoids a score-conversion failure observed on an earlier
accepted public submission. The kernel proves the claimed bound is sufficient. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Init
open InitE

abbrev preciseK : Nat := 324083911380881504571204891383254601766234842401526179490295238271093124846114809760948895514555522
abbrev kLit : Nat := 324083911380881504571204891383254601766234842401526179490295238271093124846114809760948895514555522

theorem preciseK_eq : Final.totalBoundSrc bMain = preciseK := by decide +kernel

theorem kLit_ge : Final.totalBoundSrc bMain ≤ kLit :=
  Nat.le_of_eq preciseK_eq

theorem certificate_lit :
    Certificate (Final.withScore baselineSubmission (.finite kLit)) (.finite kLit) := by
  refine ⟨rfl, Final.withScore_admitted _ _ baselineSubmission_admitted, ?_⟩
  intro input hgas outcome events hsrc hcovered
  obtain ⟨steps, hsteps, hrun⟩ := certificate_closed.correct input hgas outcome events hsrc hcovered
  refine ⟨steps, le_trans hsteps kLit_ge, ?_⟩
  simpa only [matchingExecutionAt, Final.withScore_machineConfig, Final.withScore_initialState] using hrun

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.certificate_lit
