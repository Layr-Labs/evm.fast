import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_268_eq : LabToTarget.sectionLabels 223248 Reencode0_268.lines [] = (223652, localLabels1_268) := by
  with_unfolding_all rfl
#print axioms localLabels1_268_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
