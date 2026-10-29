import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_655_eq : LabToTarget.sectionLabels 630932 Reencode0_655.lines [] = (637636, localLabels1_655) := by
  with_unfolding_all rfl
#print axioms localLabels1_655_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
