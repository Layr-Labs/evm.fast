import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_486
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_486_eq : LabToTarget.sectionLabels 399764 Reencode0_486.lines [] = (399876, localLabels1_486) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_486_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
