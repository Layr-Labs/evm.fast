import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_519_eq : LabToTarget.sectionLabels 422488 Reencode0_519.lines [] = (423532, localLabels1_519) := by
  with_unfolding_all rfl
#print axioms localLabels1_519_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
