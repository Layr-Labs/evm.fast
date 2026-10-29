import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_207_eq : LabToTarget.sectionLabels 122380 Initial207.lines [] = (126144, localLabels0_207) := by
  with_unfolding_all rfl
#print axioms localLabels0_207_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
