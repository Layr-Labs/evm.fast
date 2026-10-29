import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_421_eq : LabToTarget.sectionLabels 343252 Initial421.lines [] = (344272, localLabels0_421) := by
  with_unfolding_all rfl
#print axioms localLabels0_421_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
