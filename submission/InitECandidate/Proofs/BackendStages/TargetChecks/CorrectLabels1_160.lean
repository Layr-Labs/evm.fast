import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_160
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_160
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_160_eq : LabToTarget.sectionLabels 92244 Reencode0_160.lines [] = (92572, localLabels1_160) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_160_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
