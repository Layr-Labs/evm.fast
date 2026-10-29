import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_116
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_116
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_116_eq : LabToTarget.sectionLabels 13844 Reencode0_116.lines [] = (13960, localLabels1_116) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_116_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
