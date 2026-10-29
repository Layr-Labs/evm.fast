import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_284
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_284_eq : LabToTarget.sectionLabels 244716 Initial284.lines [] = (245076, localLabels0_284) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_284_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
