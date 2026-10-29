import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_242
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_242_eq : LabToTarget.sectionLabels 189296 Initial242.lines [] = (190224, localLabels0_242) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_242_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
