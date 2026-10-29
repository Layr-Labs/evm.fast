import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_354
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_354_eq : LabToTarget.sectionLabels 300820 Reencode0_354.lines [] = (300860, localLabels1_354) := by
  with_unfolding_all rfl
#print axioms localLabels1_354_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
