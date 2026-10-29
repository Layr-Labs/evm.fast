import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_791_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 891592 riscvConfig.encode Initial791.lines [] true = (Reencode0_791.lines, 899348, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_791_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
