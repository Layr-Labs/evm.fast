import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_543_eq : LabToTarget.sectionLabels 441408 Initial543.lines [] = (442112, localLabels0_543) := by
  with_unfolding_all rfl
#print axioms localLabels0_543_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
