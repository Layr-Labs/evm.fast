import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_258
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_258_eq : LabToTarget.sectionLabels 207764 Reencode0_258.lines [] = (208076, localLabels1_258) := by
  with_unfolding_all rfl
#print axioms localLabels1_258_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
