import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_157_eq : LabToTarget.sectionLabels 90528 Reencode0_157.lines [] = (90960, localLabels1_157) := by
  with_unfolding_all rfl
#print axioms localLabels1_157_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
