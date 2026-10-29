import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_753_eq : LabToTarget.sectionLabels 821468 Reencode0_753.lines [] = (822528, localLabels1_753) := by
  with_unfolding_all rfl
#print axioms localLabels1_753_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
