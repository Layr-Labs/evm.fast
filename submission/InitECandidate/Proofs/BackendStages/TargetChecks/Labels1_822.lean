import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_822
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_822_eq : LabToTarget.sectionLabels 975404 Reencode0_822.lines [] = (976456, localLabels1_822) := by
  with_unfolding_all rfl
#print axioms localLabels1_822_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
