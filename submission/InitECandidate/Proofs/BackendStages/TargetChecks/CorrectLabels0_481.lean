import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_481
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_481_eq : LabToTarget.sectionLabels 396572 Initial481.lines [] = (397136, localLabels0_481) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_481_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
