import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_455
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_455
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_455_eq : LabToTarget.sectionLabels 369760 Reencode0_455.lines [] = (370044, localLabels1_455) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_455_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
