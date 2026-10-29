import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_818
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_818_eq : LabToTarget.sectionLabels 970212 Initial818.lines [] = (974668, localLabels0_818) := by
  with_unfolding_all rfl
#print axioms localLabels0_818_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
