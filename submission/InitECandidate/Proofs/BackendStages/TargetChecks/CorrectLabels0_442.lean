import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_442
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_442_eq : LabToTarget.sectionLabels 357872 Initial442.lines [] = (358180, localLabels0_442) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_442_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
