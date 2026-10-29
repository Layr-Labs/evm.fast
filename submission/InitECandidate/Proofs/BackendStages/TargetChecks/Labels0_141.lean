import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_141_eq : LabToTarget.sectionLabels 31896 Initial141.lines [] = (32184, localLabels0_141) := by
  with_unfolding_all rfl
#print axioms localLabels0_141_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
