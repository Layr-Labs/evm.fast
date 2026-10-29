import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_448_eq : LabToTarget.sectionLabels 360188 Reencode0_448.lines [] = (360720, localLabels1_448) := by
  with_unfolding_all rfl
#print axioms localLabels1_448_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
