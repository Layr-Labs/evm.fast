import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_301
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_301
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_301_eq : LabToTarget.sectionLabels 253492 Reencode0_301.lines [] = (256152, localLabels1_301) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_301_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
