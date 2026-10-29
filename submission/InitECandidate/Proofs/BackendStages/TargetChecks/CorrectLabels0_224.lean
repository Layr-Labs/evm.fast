import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_224
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_224_eq : LabToTarget.sectionLabels 138256 Initial224.lines [] = (144900, localLabels0_224) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_224_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
