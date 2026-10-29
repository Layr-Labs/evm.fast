import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_561_eq : LabToTarget.sectionLabels 462896 Initial561.lines [] = (463096, localLabels0_561) := by
  with_unfolding_all rfl
#print axioms localLabels0_561_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
