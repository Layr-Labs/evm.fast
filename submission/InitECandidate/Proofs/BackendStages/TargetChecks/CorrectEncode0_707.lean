import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_707_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 769460 riscvConfig.encode Initial707.lines [] true = (Reencode0_707.lines, 769656, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_707_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
