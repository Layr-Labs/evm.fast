import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_190
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_190_eq : LabToTarget.sectionLabels 107616 Reencode0_190.lines [] = (107864, localLabels1_190) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_190_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
