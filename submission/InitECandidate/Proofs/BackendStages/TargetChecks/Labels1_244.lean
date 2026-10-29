import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_244
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_244_eq : LabToTarget.sectionLabels 190968 Reencode0_244.lines [] = (191296, localLabels1_244) := by
  with_unfolding_all rfl
#print axioms localLabels1_244_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
