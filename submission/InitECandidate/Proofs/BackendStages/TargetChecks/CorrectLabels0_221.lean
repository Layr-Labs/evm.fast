import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_221
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_221_eq : LabToTarget.sectionLabels 133644 Initial221.lines [] = (133732, localLabels0_221) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_221_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
