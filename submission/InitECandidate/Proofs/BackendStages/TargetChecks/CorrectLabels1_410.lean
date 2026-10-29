import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_410
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_410
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_410_eq : LabToTarget.sectionLabels 337296 Reencode0_410.lines [] = (338328, localLabels1_410) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_410_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
