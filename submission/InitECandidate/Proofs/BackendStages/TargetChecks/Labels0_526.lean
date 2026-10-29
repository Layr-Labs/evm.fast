import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_526_eq : LabToTarget.sectionLabels 429452 Initial526.lines [] = (430492, localLabels0_526) := by
  with_unfolding_all rfl
#print axioms localLabels0_526_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
