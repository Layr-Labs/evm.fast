import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_463
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_463_eq : LabToTarget.sectionLabels 391148 Initial463.lines [] = (391184, localLabels0_463) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_463_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
