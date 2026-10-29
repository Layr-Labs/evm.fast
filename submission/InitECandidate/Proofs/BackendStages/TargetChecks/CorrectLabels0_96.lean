import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_96
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_96_eq : LabToTarget.sectionLabels 11792 Initial96.lines [] = (11960, localLabels0_96) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_96_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
