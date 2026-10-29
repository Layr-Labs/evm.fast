import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_286
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_286_eq : LabToTarget.sectionLabels 247356 Initial286.lines [] = (247376, localLabels0_286) := by
  with_unfolding_all rfl
#print axioms localLabels0_286_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
