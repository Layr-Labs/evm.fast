import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_548
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_548_eq : LabToTarget.sectionLabels 447360 Initial548.lines [] = (447672, localLabels0_548) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_548_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
