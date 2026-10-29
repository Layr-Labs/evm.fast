import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_215_eq : LabToTarget.sectionLabels 132108 Reencode0_215.lines [] = (132176, localLabels1_215) := by
  with_unfolding_all rfl
#print axioms localLabels1_215_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
