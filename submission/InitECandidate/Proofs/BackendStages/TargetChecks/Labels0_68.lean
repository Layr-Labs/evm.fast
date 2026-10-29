import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_68
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_68_eq : LabToTarget.sectionLabels 5532 Initial68.lines [] = (6016, localLabels0_68) := by
  with_unfolding_all rfl
#print axioms localLabels0_68_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
