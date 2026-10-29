import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_566_eq : LabToTarget.sectionLabels 464480 Reencode0_566.lines [] = (465536, localLabels1_566) := by
  with_unfolding_all rfl
#print axioms localLabels1_566_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
