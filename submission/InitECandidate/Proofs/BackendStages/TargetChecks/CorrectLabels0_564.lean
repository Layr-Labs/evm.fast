import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_564
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_564_eq : LabToTarget.sectionLabels 463720 Initial564.lines [] = (464168, localLabels0_564) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_564_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
