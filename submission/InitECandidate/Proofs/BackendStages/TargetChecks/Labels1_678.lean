import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_678
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_678_eq : LabToTarget.sectionLabels 664648 Reencode0_678.lines [] = (664832, localLabels1_678) := by
  with_unfolding_all rfl
#print axioms localLabels1_678_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
