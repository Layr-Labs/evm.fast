import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_471
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_471
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_471_eq : LabToTarget.sectionLabels 392588 Reencode0_471.lines [] = (392952, localLabels1_471) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_471_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
