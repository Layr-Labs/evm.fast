import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_374
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_374_eq : LabToTarget.sectionLabels 312808 Initial374.lines [] = (312832, localLabels0_374) := by
  with_unfolding_all rfl
#print axioms localLabels0_374_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
