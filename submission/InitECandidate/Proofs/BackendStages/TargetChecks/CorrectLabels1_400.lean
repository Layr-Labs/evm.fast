import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_400
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_400_eq : LabToTarget.sectionLabels 331172 Reencode0_400.lines [] = (331720, localLabels1_400) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_400_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
