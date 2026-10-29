import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_461
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_461_eq : LabToTarget.sectionLabels 389892 Reencode0_461.lines [] = (391104, localLabels1_461) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_461_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
