import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_597
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_597_eq : LabToTarget.sectionLabels 518996 Initial597.lines [] = (519424, localLabels0_597) := by
  with_unfolding_all rfl
#print axioms localLabels0_597_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
