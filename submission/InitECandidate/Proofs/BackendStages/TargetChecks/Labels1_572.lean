import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_572
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_572_eq : LabToTarget.sectionLabels 473356 Reencode0_572.lines [] = (473392, localLabels1_572) := by
  with_unfolding_all rfl
#print axioms localLabels1_572_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
