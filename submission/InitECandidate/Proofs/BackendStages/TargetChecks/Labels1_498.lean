import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_498_eq : LabToTarget.sectionLabels 404128 Reencode0_498.lines [] = (405000, localLabels1_498) := by
  with_unfolding_all rfl
#print axioms localLabels1_498_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
