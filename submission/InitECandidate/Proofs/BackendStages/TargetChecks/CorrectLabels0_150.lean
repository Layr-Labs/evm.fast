import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_150
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_150_eq : LabToTarget.sectionLabels 37220 Initial150.lines [] = (37408, localLabels0_150) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_150_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
