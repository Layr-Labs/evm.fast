import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_671
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_671_eq : LabToTarget.sectionLabels 662748 Reencode0_671.lines [] = (663100, localLabels1_671) := by
  with_unfolding_all rfl
#print axioms localLabels1_671_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
