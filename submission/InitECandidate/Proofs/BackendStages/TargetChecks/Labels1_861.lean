import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_861
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_861_eq : LabToTarget.sectionLabels 1033272 Reencode0_861.lines [] = (1033912, localLabels1_861) := by
  with_unfolding_all rfl
#print axioms localLabels1_861_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
