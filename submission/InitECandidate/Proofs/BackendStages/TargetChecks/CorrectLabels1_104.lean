import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_104
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_104_eq : LabToTarget.sectionLabels 12480 Reencode0_104.lines [] = (12712, localLabels1_104) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_104_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
