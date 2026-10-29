import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_618_eq : LabToTarget.sectionLabels 544656 Reencode0_618.lines [] = (548004, localLabels1_618) := by
  with_unfolding_all rfl
#print axioms localLabels1_618_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
