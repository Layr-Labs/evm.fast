import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_601_eq : LabToTarget.sectionLabels 521204 Reencode0_601.lines [] = (526020, localLabels1_601) := by
  with_unfolding_all rfl
#print axioms localLabels1_601_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
