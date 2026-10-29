import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_765
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_765_eq : LabToTarget.sectionLabels 835304 Initial765.lines [] = (839584, localLabels0_765) := by
  with_unfolding_all rfl
#print axioms localLabels0_765_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
