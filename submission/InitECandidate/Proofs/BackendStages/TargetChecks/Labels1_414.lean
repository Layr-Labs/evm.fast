import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_414_eq : LabToTarget.sectionLabels 339640 Reencode0_414.lines [] = (340380, localLabels1_414) := by
  with_unfolding_all rfl
#print axioms localLabels1_414_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
