import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_759
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_759_eq : LabToTarget.sectionLabels 829528 Reencode0_759.lines [] = (829544, localLabels1_759) := by
  with_unfolding_all rfl
#print axioms localLabels1_759_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
