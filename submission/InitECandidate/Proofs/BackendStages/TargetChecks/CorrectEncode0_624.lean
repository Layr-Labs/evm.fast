import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_624_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 571192 riscvConfig.encode Initial624.lines [] true = (Reencode0_624.lines, 576792, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_624_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
