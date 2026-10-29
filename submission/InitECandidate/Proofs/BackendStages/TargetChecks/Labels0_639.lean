import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_639_eq : LabToTarget.sectionLabels 591164 Initial639.lines [] = (591888, localLabels0_639) := by
  with_unfolding_all rfl
#print axioms localLabels0_639_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
