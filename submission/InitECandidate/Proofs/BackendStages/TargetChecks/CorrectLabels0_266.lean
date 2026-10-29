import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_266
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_266_eq : LabToTarget.sectionLabels 220684 Initial266.lines [] = (222076, localLabels0_266) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_266_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
