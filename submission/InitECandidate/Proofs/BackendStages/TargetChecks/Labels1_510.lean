import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_510_eq : LabToTarget.sectionLabels 415236 Reencode0_510.lines [] = (416108, localLabels1_510) := by
  with_unfolding_all rfl
#print axioms localLabels1_510_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
