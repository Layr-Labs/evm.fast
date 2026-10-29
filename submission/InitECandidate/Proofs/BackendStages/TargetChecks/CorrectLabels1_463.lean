import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_463
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_463_eq : LabToTarget.sectionLabels 391152 Reencode0_463.lines [] = (391188, localLabels1_463) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_463_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
