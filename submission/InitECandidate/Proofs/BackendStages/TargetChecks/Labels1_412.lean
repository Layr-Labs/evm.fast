import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_412_eq : LabToTarget.sectionLabels 339080 Reencode0_412.lines [] = (339444, localLabels1_412) := by
  with_unfolding_all rfl
#print axioms localLabels1_412_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
