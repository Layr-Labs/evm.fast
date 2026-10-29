import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_457
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_457_eq : LabToTarget.sectionLabels 370224 Reencode0_457.lines [] = (373704, localLabels1_457) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_457_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
