import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_316
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_316_eq : LabToTarget.sectionLabels 269132 Reencode0_316.lines [] = (270176, localLabels1_316) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_316_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
