import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_444_eq : LabToTarget.sectionLabels 358608 Initial444.lines [] = (359148, localLabels0_444) := by
  with_unfolding_all rfl
#print axioms localLabels0_444_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
