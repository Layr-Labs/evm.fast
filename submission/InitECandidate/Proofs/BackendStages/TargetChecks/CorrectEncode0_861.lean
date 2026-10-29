import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_861
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_861_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1033272 riscvConfig.encode Initial861.lines [] true = (Reencode0_861.lines, 1033912, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_861_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
