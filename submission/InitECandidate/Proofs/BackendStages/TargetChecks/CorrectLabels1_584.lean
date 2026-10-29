import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_584
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_584_eq : LabToTarget.sectionLabels 481192 Reencode0_584.lines [] = (483432, localLabels1_584) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_584_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
