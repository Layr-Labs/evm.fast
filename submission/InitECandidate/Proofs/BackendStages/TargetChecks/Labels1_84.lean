import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_84_eq : LabToTarget.sectionLabels 9452 Reencode0_84.lines [] = (9612, localLabels1_84) := by
  with_unfolding_all rfl
#print axioms localLabels1_84_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
