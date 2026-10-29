import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_349
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_349_eq : LabToTarget.sectionLabels 300680 Initial349.lines [] = (300696, localLabels0_349) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_349_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
