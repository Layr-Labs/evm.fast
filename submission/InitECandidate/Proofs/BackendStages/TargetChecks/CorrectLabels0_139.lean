import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_139
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_139_eq : LabToTarget.sectionLabels 30268 Initial139.lines [] = (30444, localLabels0_139) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_139_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
