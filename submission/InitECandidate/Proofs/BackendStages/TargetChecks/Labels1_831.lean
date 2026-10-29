import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_831_eq : LabToTarget.sectionLabels 981392 Reencode0_831.lines [] = (982056, localLabels1_831) := by
  with_unfolding_all rfl
#print axioms localLabels1_831_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
