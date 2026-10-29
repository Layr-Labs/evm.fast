import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_481
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_481_eq : LabToTarget.sectionLabels 396576 Reencode0_481.lines [] = (397140, localLabels1_481) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_481_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
