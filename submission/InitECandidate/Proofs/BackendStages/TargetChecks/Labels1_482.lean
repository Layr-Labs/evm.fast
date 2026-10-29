import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_482_eq : LabToTarget.sectionLabels 397140 Reencode0_482.lines [] = (397888, localLabels1_482) := by
  with_unfolding_all rfl
#print axioms localLabels1_482_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
