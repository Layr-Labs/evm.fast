import InitECandidate.Solver.MemSafe.Init.Fold

/-! The checked source bound, converted using the sharper compiler step bound
and rounded up for the public score. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Init
open InitE

abbrev preciseK : Nat := 803053928893475711732071576597284896856358823057213292957950350278323330724996341354
abbrev kLit : Nat := 803053928893476000000000000000000000000000000000000000000000000000000000000000000000

private theorem bMain_eq :
    bMain = 5641225370585475491829723747810894596240895795392188999326330240508759 := by
  decide +kernel

theorem preciseK_eq : Final.totalBoundSrc bMain = preciseK := by
  calc
    Final.totalBoundSrc bMain = Final.totalBoundSrc
        5641225370585475491829723747810894596240895795392188999326330240508759 :=
      congrArg Final.totalBoundSrc bMain_eq
    _ = preciseK := by decide +kernel

theorem kLit_ge : Final.totalBoundSrc bMain ≤ kLit := by
  rw [preciseK_eq]
  decide +kernel

theorem certificate_lit :
    Certificate (Final.withScore baselineSubmission (.finite kLit)) (.finite kLit) := by
  refine ⟨rfl, Final.withScore_admitted _ _ baselineSubmission_admitted, ?_⟩
  intro input hgas outcome events hsrc hcovered
  obtain ⟨steps, hsteps, hrun⟩ := certificate_closed.correct input hgas outcome events hsrc hcovered
  refine ⟨steps, le_trans hsteps kLit_ge, ?_⟩
  simpa only [matchingExecutionAt, Final.withScore_machineConfig, Final.withScore_initialState] using hrun

end InitECandidate.Solver.MemSafe.Init

#print axioms InitECandidate.Solver.MemSafe.Init.certificate_lit
