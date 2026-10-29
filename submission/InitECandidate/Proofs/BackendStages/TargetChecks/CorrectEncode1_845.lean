import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_845
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_845_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 1001228 riscvConfig.encode Reencode0_845.lines [] true = (Reencode1_845.lines, 1002556, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_845_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
