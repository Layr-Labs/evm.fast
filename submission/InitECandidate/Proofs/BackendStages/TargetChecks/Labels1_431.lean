import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_431
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_431_eq : LabToTarget.sectionLabels 349916 Reencode0_431.lines [] = (351164, localLabels1_431) := by
  with_unfolding_all rfl
#print axioms localLabels1_431_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
