import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_741_eq : LabToTarget.sectionLabels 810404 Initial741.lines [] = (811080, localLabels0_741) := by
  with_unfolding_all rfl
#print axioms localLabels0_741_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
