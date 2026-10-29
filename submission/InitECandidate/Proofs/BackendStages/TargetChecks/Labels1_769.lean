import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_769
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_769_eq : LabToTarget.sectionLabels 840228 Reencode0_769.lines [] = (840624, localLabels1_769) := by
  with_unfolding_all rfl
#print axioms localLabels1_769_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
