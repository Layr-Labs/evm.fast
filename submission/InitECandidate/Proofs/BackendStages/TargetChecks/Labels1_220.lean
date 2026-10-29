import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_220_eq : LabToTarget.sectionLabels 133528 Reencode0_220.lines [] = (133648, localLabels1_220) := by
  with_unfolding_all rfl
#print axioms localLabels1_220_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
