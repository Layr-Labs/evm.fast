import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_293_eq : LabToTarget.sectionLabels 250296 Initial293.lines [] = (251024, localLabels0_293) := by
  with_unfolding_all rfl
#print axioms localLabels0_293_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
