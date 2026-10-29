import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_485
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_485_eq : LabToTarget.sectionLabels 398876 Initial485.lines [] = (399760, localLabels0_485) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_485_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
