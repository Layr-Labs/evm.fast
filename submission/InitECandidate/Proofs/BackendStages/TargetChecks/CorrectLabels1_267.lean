import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_267
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_267
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_267_eq : LabToTarget.sectionLabels 222080 Reencode0_267.lines [] = (223248, localLabels1_267) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_267_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
