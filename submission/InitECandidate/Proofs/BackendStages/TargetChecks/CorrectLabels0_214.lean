import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_214
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_214_eq : LabToTarget.sectionLabels 132052 Initial214.lines [] = (132104, localLabels0_214) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_214_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
