import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_93
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_93_eq : LabToTarget.sectionLabels 11244 Reencode0_93.lines [] = (11272, localLabels1_93) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_93_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
