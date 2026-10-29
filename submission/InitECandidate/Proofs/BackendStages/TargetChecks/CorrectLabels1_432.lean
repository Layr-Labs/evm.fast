import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_432
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_432
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_432_eq : LabToTarget.sectionLabels 351164 Reencode0_432.lines [] = (351632, localLabels1_432) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_432_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
