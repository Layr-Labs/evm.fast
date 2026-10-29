import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_875
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_875_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 1072092 riscvConfig.encode Reencode0_875.lines [] true = (Reencode1_875.lines, 1072340, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_875_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
