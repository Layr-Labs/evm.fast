import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_538
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_538_eq : LabToTarget.sectionLabels 439896 Reencode0_538.lines [] = (440028, localLabels1_538) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_538_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
