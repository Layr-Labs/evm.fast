import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_801
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_801_eq : LabToTarget.sectionLabels 929608 Reencode0_801.lines [] = (937716, localLabels1_801) := by
  with_unfolding_all rfl
#print axioms localLabels1_801_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
