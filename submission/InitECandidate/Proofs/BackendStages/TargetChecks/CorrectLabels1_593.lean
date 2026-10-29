import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_593
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_593
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_593_eq : LabToTarget.sectionLabels 496208 Reencode0_593.lines [] = (501700, localLabels1_593) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_593_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
