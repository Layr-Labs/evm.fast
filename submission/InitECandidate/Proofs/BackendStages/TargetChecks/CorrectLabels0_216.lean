import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_216
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_216_eq : LabToTarget.sectionLabels 132172 Initial216.lines [] = (132240, localLabels0_216) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_216_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
