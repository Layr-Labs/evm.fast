import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_751
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_751_eq : LabToTarget.sectionLabels 817800 Reencode0_751.lines [] = (818276, localLabels1_751) := by
  with_unfolding_all rfl
#print axioms localLabels1_751_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
