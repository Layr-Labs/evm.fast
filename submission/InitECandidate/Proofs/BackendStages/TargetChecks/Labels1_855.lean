import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_855
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_855_eq : LabToTarget.sectionLabels 1029348 Reencode0_855.lines [] = (1029388, localLabels1_855) := by
  with_unfolding_all rfl
#print axioms localLabels1_855_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
