import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_530
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_530_eq : LabToTarget.sectionLabels 431644 Reencode0_530.lines [] = (432664, localLabels1_530) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_530_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
