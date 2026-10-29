import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_87
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_87_eq : LabToTarget.sectionLabels 9820 Reencode0_87.lines [] = (10136, localLabels1_87) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_87_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
