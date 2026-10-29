import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_68
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_68
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_68_eq : LabToTarget.sectionLabels 5532 Initial68.lines [] = (6016, localLabels0_68) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_68_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
