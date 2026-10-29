import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_778_eq : LabToTarget.sectionLabels 864948 Initial778.lines [] = (865392, localLabels0_778) := by
  with_unfolding_all rfl
#print axioms localLabels0_778_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
