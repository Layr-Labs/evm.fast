import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_775
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_775_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 862056 riscvConfig.encode Reencode0_775.lines [] true = (Reencode1_775.lines, 863324, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_775_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
