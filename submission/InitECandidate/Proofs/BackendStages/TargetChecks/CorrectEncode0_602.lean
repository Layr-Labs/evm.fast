import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_602
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_602_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 526020 riscvConfig.encode Initial602.lines [] true = (Reencode0_602.lines, 527072, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_602_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
