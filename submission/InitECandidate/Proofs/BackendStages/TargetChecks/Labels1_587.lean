import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_587_eq : LabToTarget.sectionLabels 486680 Reencode0_587.lines [] = (488024, localLabels1_587) := by
  with_unfolding_all rfl
#print axioms localLabels1_587_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
