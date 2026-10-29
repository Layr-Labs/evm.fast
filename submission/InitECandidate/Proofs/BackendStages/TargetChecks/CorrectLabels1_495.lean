import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_495
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_495_eq : LabToTarget.sectionLabels 402864 Reencode0_495.lines [] = (403064, localLabels1_495) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_495_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
