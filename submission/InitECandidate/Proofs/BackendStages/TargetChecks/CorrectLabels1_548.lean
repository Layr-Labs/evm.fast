import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_548
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_548_eq : LabToTarget.sectionLabels 447364 Reencode0_548.lines [] = (447676, localLabels1_548) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_548_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
