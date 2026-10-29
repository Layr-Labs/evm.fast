import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_128
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_128_eq : LabToTarget.sectionLabels 23908 Reencode0_128.lines [] = (24816, localLabels1_128) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_128_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
