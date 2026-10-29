import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_302
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_302_eq : LabToTarget.sectionLabels 256148 Initial302.lines [] = (258796, localLabels0_302) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_302_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
