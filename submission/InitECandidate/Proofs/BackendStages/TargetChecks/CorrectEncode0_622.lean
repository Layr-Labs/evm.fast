import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_622
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_622_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 558168 riscvConfig.encode Initial622.lines [] true = (Reencode0_622.lines, 565552, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_622_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
