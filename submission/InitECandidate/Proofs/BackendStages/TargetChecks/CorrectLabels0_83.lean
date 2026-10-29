import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_83
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_83_eq : LabToTarget.sectionLabels 9384 Initial83.lines [] = (9448, localLabels0_83) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_83_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
