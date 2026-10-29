import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_450_eq : LabToTarget.sectionLabels 362520 Reencode0_450.lines [] = (364296, localLabels1_450) := by
  with_unfolding_all rfl
#print axioms localLabels1_450_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
