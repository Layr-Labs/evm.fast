import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_767
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_767_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 840012 riscvConfig.encode Reencode0_767.lines [] true = (Reencode1_767.lines, 840052, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_767_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
