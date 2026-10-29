import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_452
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_452
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_452_eq : LabToTarget.sectionLabels 364756 Reencode0_452.lines [] = (365152, localLabels1_452) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_452_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
