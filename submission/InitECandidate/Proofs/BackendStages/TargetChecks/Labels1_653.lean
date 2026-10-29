import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_653
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_653_eq : LabToTarget.sectionLabels 627992 Reencode0_653.lines [] = (629380, localLabels1_653) := by
  with_unfolding_all rfl
#print axioms localLabels1_653_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
