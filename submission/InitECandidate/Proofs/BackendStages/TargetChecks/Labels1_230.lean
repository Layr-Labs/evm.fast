import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_230
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_230_eq : LabToTarget.sectionLabels 163368 Reencode0_230.lines [] = (165356, localLabels1_230) := by
  with_unfolding_all rfl
#print axioms localLabels1_230_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
