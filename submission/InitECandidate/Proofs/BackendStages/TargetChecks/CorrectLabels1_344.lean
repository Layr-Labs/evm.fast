import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_344
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_344_eq : LabToTarget.sectionLabels 293444 Reencode0_344.lines [] = (295348, localLabels1_344) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_344_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
