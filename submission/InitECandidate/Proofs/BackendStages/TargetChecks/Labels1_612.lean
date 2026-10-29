import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_612
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_612_eq : LabToTarget.sectionLabels 534980 Reencode0_612.lines [] = (535624, localLabels1_612) := by
  with_unfolding_all rfl
#print axioms localLabels1_612_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
