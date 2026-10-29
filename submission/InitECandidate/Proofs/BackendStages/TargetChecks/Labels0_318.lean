import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_318_eq : LabToTarget.sectionLabels 270704 Initial318.lines [] = (273104, localLabels0_318) := by
  with_unfolding_all rfl
#print axioms localLabels0_318_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
