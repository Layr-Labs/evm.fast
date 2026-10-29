import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_372
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_372_eq : LabToTarget.sectionLabels 312760 Initial372.lines [] = (312784, localLabels0_372) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_372_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
