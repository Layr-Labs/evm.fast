import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_236
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_236_eq : LabToTarget.sectionLabels 184728 Reencode0_236.lines [] = (185260, localLabels1_236) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_236_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
