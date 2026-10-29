import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_626_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 578028 riscvConfig.encode Initial626.lines [] true = (Reencode0_626.lines, 579428, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_626_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
