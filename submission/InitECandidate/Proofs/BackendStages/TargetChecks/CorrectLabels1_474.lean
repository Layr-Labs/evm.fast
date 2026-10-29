import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_474
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_474_eq : LabToTarget.sectionLabels 393276 Reencode0_474.lines [] = (393364, localLabels1_474) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_474_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
