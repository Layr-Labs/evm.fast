import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_309
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_309_eq : LabToTarget.sectionLabels 262264 Initial309.lines [] = (262464, localLabels0_309) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_309_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
