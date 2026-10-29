import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_265_eq : LabToTarget.sectionLabels 218680 Initial265.lines [] = (220684, localLabels0_265) := by
  with_unfolding_all rfl
#print axioms localLabels0_265_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
