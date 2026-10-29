import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_791_eq : LabToTarget.sectionLabels 891592 Reencode0_791.lines [] = (899348, localLabels1_791) := by
  with_unfolding_all rfl
#print axioms localLabels1_791_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
