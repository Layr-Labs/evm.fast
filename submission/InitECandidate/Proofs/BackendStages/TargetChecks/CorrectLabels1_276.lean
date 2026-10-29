import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_276
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_276_eq : LabToTarget.sectionLabels 230812 Reencode0_276.lines [] = (234928, localLabels1_276) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_276_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
