import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_373
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_373_eq : LabToTarget.sectionLabels 312788 Reencode0_373.lines [] = (312812, localLabels1_373) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_373_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
