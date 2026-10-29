import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_401
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_401_eq : LabToTarget.sectionLabels 331720 Reencode0_401.lines [] = (333320, localLabels1_401) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_401_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
