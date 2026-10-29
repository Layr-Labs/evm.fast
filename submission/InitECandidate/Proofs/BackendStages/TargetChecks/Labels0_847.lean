import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_847
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_847_eq : LabToTarget.sectionLabels 1003424 Initial847.lines [] = (1004380, localLabels0_847) := by
  with_unfolding_all rfl
#print axioms localLabels0_847_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
