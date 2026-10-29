import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_251_eq : LabToTarget.sectionLabels 196140 Reencode0_251.lines [] = (197652, localLabels1_251) := by
  with_unfolding_all rfl
#print axioms localLabels1_251_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
