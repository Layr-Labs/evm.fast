import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_303
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_303_eq : LabToTarget.sectionLabels 258796 Initial303.lines [] = (259136, localLabels0_303) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_303_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
