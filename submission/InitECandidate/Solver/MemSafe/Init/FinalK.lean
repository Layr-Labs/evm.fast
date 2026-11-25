import InitECandidate.Solver.MemSafe.Init.Fold

/-! The public claim is the exact step bound checked by the kernel. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Init
open InitE

abbrev preciseK : Nat := 9025508623131851736992317654426995989520558167119604908573454725526549900114
abbrev kLit : Nat := 9025508623131851736992317654426995989520558167119604908573454725526549900114

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
