import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_540
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_540_eq : LabToTarget.sectionLabels 440496 Initial540.lines [] = (440568, localLabels0_540) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_540_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
