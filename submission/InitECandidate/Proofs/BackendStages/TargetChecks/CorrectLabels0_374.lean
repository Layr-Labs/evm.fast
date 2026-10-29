import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_374
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_374_eq : LabToTarget.sectionLabels 312808 Initial374.lines [] = (312832, localLabels0_374) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_374_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
