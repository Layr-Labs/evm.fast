import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_782
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_782_eq : LabToTarget.sectionLabels 866104 Reencode0_782.lines [] = (871412, localLabels1_782) := by
  with_unfolding_all rfl
#print axioms localLabels1_782_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
