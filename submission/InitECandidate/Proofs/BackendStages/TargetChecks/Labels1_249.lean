import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_249_eq : LabToTarget.sectionLabels 195052 Reencode0_249.lines [] = (195356, localLabels1_249) := by
  with_unfolding_all rfl
#print axioms localLabels1_249_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
