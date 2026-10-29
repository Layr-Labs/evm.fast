import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_277_eq : LabToTarget.sectionLabels 234928 Reencode0_277.lines [] = (235500, localLabels1_277) := by
  with_unfolding_all rfl
#print axioms localLabels1_277_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
