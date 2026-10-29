import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_453
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_453_eq : LabToTarget.sectionLabels 365152 Reencode0_453.lines [] = (365880, localLabels1_453) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_453_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
