import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_293_eq : LabToTarget.sectionLabels 250300 Reencode0_293.lines [] = (251028, localLabels1_293) := by
  with_unfolding_all rfl
#print axioms localLabels1_293_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
