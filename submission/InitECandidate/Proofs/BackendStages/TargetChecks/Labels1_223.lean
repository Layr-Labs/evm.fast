import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_223_eq : LabToTarget.sectionLabels 133768 Reencode0_223.lines [] = (138260, localLabels1_223) := by
  with_unfolding_all rfl
#print axioms localLabels1_223_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
