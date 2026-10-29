import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_543_eq : LabToTarget.sectionLabels 441412 Reencode0_543.lines [] = (442116, localLabels1_543) := by
  with_unfolding_all rfl
#print axioms localLabels1_543_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
