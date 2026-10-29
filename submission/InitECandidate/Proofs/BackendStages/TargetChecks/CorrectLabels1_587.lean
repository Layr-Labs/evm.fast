import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_587
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_587_eq : LabToTarget.sectionLabels 486680 Reencode0_587.lines [] = (488024, localLabels1_587) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_587_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
