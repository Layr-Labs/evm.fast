import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_762
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_762_eq : LabToTarget.sectionLabels 831588 Reencode0_762.lines [] = (833320, localLabels1_762) := by
  with_unfolding_all rfl
#print axioms localLabels1_762_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
