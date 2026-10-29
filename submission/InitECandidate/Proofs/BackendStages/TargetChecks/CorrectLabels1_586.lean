import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_586
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_586_eq : LabToTarget.sectionLabels 485316 Reencode0_586.lines [] = (486680, localLabels1_586) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_586_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
