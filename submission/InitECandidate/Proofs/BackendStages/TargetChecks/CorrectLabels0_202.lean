import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_202
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_202_eq : LabToTarget.sectionLabels 115204 Initial202.lines [] = (115712, localLabels0_202) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_202_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
