import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_385_eq : LabToTarget.sectionLabels 321792 Reencode0_385.lines [] = (322452, localLabels1_385) := by
  with_unfolding_all rfl
#print axioms localLabels1_385_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
