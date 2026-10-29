import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_441
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_441_eq : LabToTarget.sectionLabels 356980 Reencode0_441.lines [] = (357876, localLabels1_441) := by
  with_unfolding_all rfl
#print axioms localLabels1_441_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
