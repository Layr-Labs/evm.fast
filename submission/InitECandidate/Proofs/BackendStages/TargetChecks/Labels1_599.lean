import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_599_eq : LabToTarget.sectionLabels 520604 Reencode0_599.lines [] = (520984, localLabels1_599) := by
  with_unfolding_all rfl
#print axioms localLabels1_599_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
