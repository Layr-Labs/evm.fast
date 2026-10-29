import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_474_eq : LabToTarget.sectionLabels 393272 Initial474.lines [] = (393360, localLabels0_474) := by
  with_unfolding_all rfl
#print axioms localLabels0_474_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
