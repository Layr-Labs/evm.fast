import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_332
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_332_eq : LabToTarget.sectionLabels 282728 Reencode0_332.lines [] = (283804, localLabels1_332) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_332_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
