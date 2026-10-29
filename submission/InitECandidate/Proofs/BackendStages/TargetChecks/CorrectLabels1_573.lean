import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_573
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_573_eq : LabToTarget.sectionLabels 473392 Reencode0_573.lines [] = (473936, localLabels1_573) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_573_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
