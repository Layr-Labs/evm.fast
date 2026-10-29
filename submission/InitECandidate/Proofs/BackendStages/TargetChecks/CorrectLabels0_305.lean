import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_305
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_305
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_305_eq : LabToTarget.sectionLabels 259784 Initial305.lines [] = (260788, localLabels0_305) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_305_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
