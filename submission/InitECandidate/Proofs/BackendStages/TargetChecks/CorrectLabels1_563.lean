import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_563
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_563_eq : LabToTarget.sectionLabels 463528 Reencode0_563.lines [] = (463724, localLabels1_563) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_563_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
