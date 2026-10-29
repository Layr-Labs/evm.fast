import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_150_eq : LabToTarget.sectionLabels 37224 Reencode0_150.lines [] = (37412, localLabels1_150) := by
  with_unfolding_all rfl
#print axioms localLabels1_150_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
