import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_831_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 981392 riscvConfig.encode Initial831.lines [] true = (Reencode0_831.lines, 982056, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_831_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
