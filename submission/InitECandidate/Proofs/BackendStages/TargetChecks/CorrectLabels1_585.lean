import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_585
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_585
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_585_eq : LabToTarget.sectionLabels 483432 Reencode0_585.lines [] = (485316, localLabels1_585) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_585_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
