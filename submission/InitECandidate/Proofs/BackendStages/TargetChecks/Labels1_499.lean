import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_499_eq : LabToTarget.sectionLabels 405000 Reencode0_499.lines [] = (405872, localLabels1_499) := by
  with_unfolding_all rfl
#print axioms localLabels1_499_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
