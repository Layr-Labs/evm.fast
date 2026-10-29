import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_228_eq : LabToTarget.sectionLabels 161196 Initial228.lines [] = (162556, localLabels0_228) := by
  with_unfolding_all rfl
#print axioms localLabels0_228_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
