import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_280
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_280_eq : LabToTarget.sectionLabels 239756 Initial280.lines [] = (239944, localLabels0_280) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_280_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
