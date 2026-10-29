import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_849
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_849_eq : LabToTarget.sectionLabels 1009596 Reencode0_849.lines [] = (1009960, localLabels1_849) := by
  with_unfolding_all rfl
#print axioms localLabels1_849_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
