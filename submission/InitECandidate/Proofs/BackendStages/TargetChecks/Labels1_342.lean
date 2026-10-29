import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_342_eq : LabToTarget.sectionLabels 290536 Reencode0_342.lines [] = (292688, localLabels1_342) := by
  with_unfolding_all rfl
#print axioms localLabels1_342_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
