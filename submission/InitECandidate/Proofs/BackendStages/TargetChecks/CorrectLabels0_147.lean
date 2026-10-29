import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_147
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_147_eq : LabToTarget.sectionLabels 35032 Initial147.lines [] = (36320, localLabels0_147) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_147_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
