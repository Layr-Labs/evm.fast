import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_262_eq : LabToTarget.sectionLabels 215624 Initial262.lines [] = (216644, localLabels0_262) := by
  with_unfolding_all rfl
#print axioms localLabels0_262_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
