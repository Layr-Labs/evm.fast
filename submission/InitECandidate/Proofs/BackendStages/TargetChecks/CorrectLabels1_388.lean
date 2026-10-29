import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_388
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_388_eq : LabToTarget.sectionLabels 326040 Reencode0_388.lines [] = (326924, localLabels1_388) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_388_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
