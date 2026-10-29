import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_310
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_310_eq : LabToTarget.sectionLabels 262468 Reencode0_310.lines [] = (263272, localLabels1_310) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_310_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
