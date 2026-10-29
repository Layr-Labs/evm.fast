import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_484
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_484
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_484_eq : LabToTarget.sectionLabels 398484 Reencode0_484.lines [] = (398880, localLabels1_484) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_484_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
