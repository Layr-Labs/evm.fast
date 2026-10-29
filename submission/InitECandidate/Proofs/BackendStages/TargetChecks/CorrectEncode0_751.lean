import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_751
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_751_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 817800 riscvConfig.encode Initial751.lines [] true = (Reencode0_751.lines, 818276, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_751_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
