import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_88_eq : LabToTarget.sectionLabels 10132 Initial88.lines [] = (10188, localLabels0_88) := by
  with_unfolding_all rfl
#print axioms localLabels0_88_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
