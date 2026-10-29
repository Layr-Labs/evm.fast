import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_352
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_352_eq : LabToTarget.sectionLabels 300756 Reencode0_352.lines [] = (300788, localLabels1_352) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_352_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
