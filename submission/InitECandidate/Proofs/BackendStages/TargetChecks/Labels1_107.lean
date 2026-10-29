import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_107
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_107_eq : LabToTarget.sectionLabels 12908 Reencode0_107.lines [] = (12968, localLabels1_107) := by
  with_unfolding_all rfl
#print axioms localLabels1_107_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
