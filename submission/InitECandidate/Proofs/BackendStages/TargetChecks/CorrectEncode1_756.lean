import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_756
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_756_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 826472 riscvConfig.encode Reencode0_756.lines [] true = (Reencode1_756.lines, 826780, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_756_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
