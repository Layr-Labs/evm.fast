import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_283
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_283_eq : LabToTarget.sectionLabels 241672 Reencode0_283.lines [] = (244720, localLabels1_283) := by
  with_unfolding_all rfl
#print axioms localLabels1_283_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
