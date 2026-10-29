import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_269
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_269_eq : LabToTarget.sectionLabels 223652 Reencode0_269.lines [] = (223980, localLabels1_269) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_269_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
