import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_372_eq : LabToTarget.sectionLabels 312760 Initial372.lines [] = (312784, localLabels0_372) := by
  with_unfolding_all rfl
#print axioms localLabels0_372_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
