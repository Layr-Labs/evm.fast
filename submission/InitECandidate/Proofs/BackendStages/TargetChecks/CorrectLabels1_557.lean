import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_557
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_557_eq : LabToTarget.sectionLabels 458276 Reencode0_557.lines [] = (458720, localLabels1_557) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_557_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
