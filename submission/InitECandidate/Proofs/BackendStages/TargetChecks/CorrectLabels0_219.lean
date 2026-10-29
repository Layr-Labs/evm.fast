import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_219
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_219_eq : LabToTarget.sectionLabels 133456 Initial219.lines [] = (133524, localLabels0_219) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_219_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
