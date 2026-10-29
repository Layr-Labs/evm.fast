import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_559_eq : LabToTarget.sectionLabels 460172 Initial559.lines [] = (460604, localLabels0_559) := by
  with_unfolding_all rfl
#print axioms localLabels0_559_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
