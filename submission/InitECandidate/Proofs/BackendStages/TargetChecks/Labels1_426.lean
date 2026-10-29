import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_426_eq : LabToTarget.sectionLabels 345844 Reencode0_426.lines [] = (346704, localLabels1_426) := by
  with_unfolding_all rfl
#print axioms localLabels1_426_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
