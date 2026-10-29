import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_807
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_807_eq : LabToTarget.sectionLabels 947684 Reencode0_807.lines [] = (948376, localLabels1_807) := by
  with_unfolding_all rfl
#print axioms localLabels1_807_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
