import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_205
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_205_eq : LabToTarget.sectionLabels 116588 Initial205.lines [] = (116904, localLabels0_205) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_205_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
