import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_346
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_346_eq : LabToTarget.sectionLabels 300436 Reencode0_346.lines [] = (300636, localLabels1_346) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_346_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
