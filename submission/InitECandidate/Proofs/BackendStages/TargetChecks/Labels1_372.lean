import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_372_eq : LabToTarget.sectionLabels 312764 Reencode0_372.lines [] = (312788, localLabels1_372) := by
  with_unfolding_all rfl
#print axioms localLabels1_372_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
