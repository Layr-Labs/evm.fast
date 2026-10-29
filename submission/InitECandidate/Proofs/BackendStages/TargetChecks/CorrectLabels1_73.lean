import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_73
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_73_eq : LabToTarget.sectionLabels 6568 Reencode0_73.lines [] = (6604, localLabels1_73) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_73_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
