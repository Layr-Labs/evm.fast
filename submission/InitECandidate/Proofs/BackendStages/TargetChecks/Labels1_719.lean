import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_719
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_719_eq : LabToTarget.sectionLabels 791324 Reencode0_719.lines [] = (791736, localLabels1_719) := by
  with_unfolding_all rfl
#print axioms localLabels1_719_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
