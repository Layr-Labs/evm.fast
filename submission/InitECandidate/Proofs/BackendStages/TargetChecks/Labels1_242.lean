import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_242
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_242_eq : LabToTarget.sectionLabels 189300 Reencode0_242.lines [] = (190228, localLabels1_242) := by
  with_unfolding_all rfl
#print axioms localLabels1_242_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
