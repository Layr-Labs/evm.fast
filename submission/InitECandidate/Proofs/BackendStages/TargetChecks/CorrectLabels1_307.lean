import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_307
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_307_eq : LabToTarget.sectionLabels 261808 Reencode0_307.lines [] = (262052, localLabels1_307) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_307_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
