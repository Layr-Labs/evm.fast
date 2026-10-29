import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_239
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_239_eq : LabToTarget.sectionLabels 187192 Initial239.lines [] = (187804, localLabels0_239) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_239_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
