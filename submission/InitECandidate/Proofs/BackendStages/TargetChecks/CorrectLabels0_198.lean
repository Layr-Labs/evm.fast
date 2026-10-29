import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_198
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_198_eq : LabToTarget.sectionLabels 111888 Initial198.lines [] = (112460, localLabels0_198) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_198_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
