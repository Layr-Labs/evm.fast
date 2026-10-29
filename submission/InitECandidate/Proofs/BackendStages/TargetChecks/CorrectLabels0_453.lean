import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_453
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_453_eq : LabToTarget.sectionLabels 365148 Initial453.lines [] = (365876, localLabels0_453) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_453_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
