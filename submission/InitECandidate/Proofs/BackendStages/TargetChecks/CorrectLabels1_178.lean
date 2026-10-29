import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_178
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_178
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_178_eq : LabToTarget.sectionLabels 103560 Reencode0_178.lines [] = (103580, localLabels1_178) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_178_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
