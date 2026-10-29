import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_263_eq : LabToTarget.sectionLabels 216648 Reencode0_263.lines [] = (217816, localLabels1_263) := by
  with_unfolding_all rfl
#print axioms localLabels1_263_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
