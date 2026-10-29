import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_333_eq : LabToTarget.sectionLabels 283800 Initial333.lines [] = (287180, localLabels0_333) := by
  with_unfolding_all rfl
#print axioms localLabels0_333_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
