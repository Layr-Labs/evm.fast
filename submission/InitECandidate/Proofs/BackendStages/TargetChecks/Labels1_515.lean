import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_515_eq : LabToTarget.sectionLabels 419316 Reencode0_515.lines [] = (420076, localLabels1_515) := by
  with_unfolding_all rfl
#print axioms localLabels1_515_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
