import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_860_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1031184 riscvConfig.encode Initial860.lines [] true = (Reencode0_860.lines, 1033272, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_860_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
