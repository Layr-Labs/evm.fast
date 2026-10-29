import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_233
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_233_eq : LabToTarget.sectionLabels 171464 Reencode0_233.lines [] = (172424, localLabels1_233) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_233_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
