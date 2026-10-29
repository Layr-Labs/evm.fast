import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_249
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_249_eq : LabToTarget.sectionLabels 195048 Initial249.lines [] = (195352, localLabels0_249) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_249_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
