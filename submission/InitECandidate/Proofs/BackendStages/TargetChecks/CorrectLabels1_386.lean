import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_386
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_386_eq : LabToTarget.sectionLabels 322452 Reencode0_386.lines [] = (324604, localLabels1_386) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_386_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
