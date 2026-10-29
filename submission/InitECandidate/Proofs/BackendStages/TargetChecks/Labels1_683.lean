import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_683
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_683_eq : LabToTarget.sectionLabels 671204 Reencode0_683.lines [] = (679844, localLabels1_683) := by
  with_unfolding_all rfl
#print axioms localLabels1_683_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
