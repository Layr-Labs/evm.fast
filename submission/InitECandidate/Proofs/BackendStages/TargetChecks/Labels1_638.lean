import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_638
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_638_eq : LabToTarget.sectionLabels 588304 Reencode0_638.lines [] = (591184, localLabels1_638) := by
  with_unfolding_all rfl
#print axioms localLabels1_638_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
