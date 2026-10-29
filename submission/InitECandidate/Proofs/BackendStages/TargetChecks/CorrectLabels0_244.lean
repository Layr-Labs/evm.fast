import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_244
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_244_eq : LabToTarget.sectionLabels 190964 Initial244.lines [] = (191292, localLabels0_244) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_244_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
