import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_749
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_749_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 816784 riscvConfig.encode Reencode0_749.lines [] true = (Reencode1_749.lines, 817292, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_749_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
