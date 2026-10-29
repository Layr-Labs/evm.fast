import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_153_eq : LabToTarget.sectionLabels 56036 Reencode0_153.lines [] = (57480, localLabels1_153) := by
  with_unfolding_all rfl
#print axioms localLabels1_153_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
