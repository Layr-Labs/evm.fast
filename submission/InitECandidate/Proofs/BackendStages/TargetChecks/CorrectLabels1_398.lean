import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_398
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_398_eq : LabToTarget.sectionLabels 330476 Reencode0_398.lines [] = (330964, localLabels1_398) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_398_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
