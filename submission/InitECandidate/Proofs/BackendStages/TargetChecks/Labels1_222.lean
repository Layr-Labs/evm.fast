import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_222
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_222_eq : LabToTarget.sectionLabels 133736 Reencode0_222.lines [] = (133768, localLabels1_222) := by
  with_unfolding_all rfl
#print axioms localLabels1_222_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
