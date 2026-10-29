import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_700_eq : LabToTarget.sectionLabels 724080 Reencode0_700.lines [] = (730564, localLabels1_700) := by
  with_unfolding_all rfl
#print axioms localLabels1_700_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
