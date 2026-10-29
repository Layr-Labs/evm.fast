import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_230
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_230
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_230_eq : LabToTarget.sectionLabels 163364 Initial230.lines [] = (165352, localLabels0_230) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_230_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
