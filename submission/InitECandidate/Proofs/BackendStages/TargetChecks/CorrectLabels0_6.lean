import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_6
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_6
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_6_eq : LabToTarget.sectionLabels 908 Initial6.lines [] = (1112, localLabels0_6) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_6_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
