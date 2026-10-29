import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_426
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_426_eq : LabToTarget.sectionLabels 345840 Initial426.lines [] = (346700, localLabels0_426) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_426_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
