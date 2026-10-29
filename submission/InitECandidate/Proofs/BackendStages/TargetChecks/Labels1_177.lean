import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_177_eq : LabToTarget.sectionLabels 103144 Reencode0_177.lines [] = (103560, localLabels1_177) := by
  with_unfolding_all rfl
#print axioms localLabels1_177_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
