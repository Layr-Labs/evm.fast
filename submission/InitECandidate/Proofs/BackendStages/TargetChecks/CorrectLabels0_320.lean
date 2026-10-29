import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_320
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_320_eq : LabToTarget.sectionLabels 273764 Initial320.lines [] = (274356, localLabels0_320) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_320_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
