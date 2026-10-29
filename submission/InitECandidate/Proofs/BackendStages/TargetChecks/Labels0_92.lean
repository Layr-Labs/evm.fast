import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_92_eq : LabToTarget.sectionLabels 11212 Initial92.lines [] = (11240, localLabels0_92) := by
  with_unfolding_all rfl
#print axioms localLabels0_92_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
