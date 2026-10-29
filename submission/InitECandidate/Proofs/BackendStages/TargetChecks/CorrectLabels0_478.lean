import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_478
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_478_eq : LabToTarget.sectionLabels 394288 Initial478.lines [] = (394636, localLabels0_478) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_478_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
