import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_160
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_160_eq : LabToTarget.sectionLabels 92240 Initial160.lines [] = (92568, localLabels0_160) := by
  with_unfolding_all rfl
#print axioms localLabels0_160_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
