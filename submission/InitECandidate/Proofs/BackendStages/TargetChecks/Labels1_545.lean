import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_545_eq : LabToTarget.sectionLabels 442976 Reencode0_545.lines [] = (443176, localLabels1_545) := by
  with_unfolding_all rfl
#print axioms localLabels1_545_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
