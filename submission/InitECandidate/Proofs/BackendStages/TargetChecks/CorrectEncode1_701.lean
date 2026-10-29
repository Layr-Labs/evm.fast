import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_701_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 730564 riscvConfig.encode Reencode0_701.lines [] true = (Reencode1_701.lines, 731668, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_701_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
