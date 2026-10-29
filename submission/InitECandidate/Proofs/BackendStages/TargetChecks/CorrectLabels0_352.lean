import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_352
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_352_eq : LabToTarget.sectionLabels 300752 Initial352.lines [] = (300784, localLabels0_352) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_352_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
