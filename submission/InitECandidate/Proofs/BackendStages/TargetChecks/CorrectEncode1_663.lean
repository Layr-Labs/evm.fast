import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_663_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 654404 riscvConfig.encode Reencode0_663.lines [] true = (Reencode1_663.lines, 654432, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_663_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
