import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_451_eq : LabToTarget.sectionLabels 364292 Initial451.lines [] = (364752, localLabels0_451) := by
  with_unfolding_all rfl
#print axioms localLabels0_451_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
