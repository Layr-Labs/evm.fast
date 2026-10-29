import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_777_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 864216 riscvConfig.encode Reencode0_777.lines [] true = (Reencode1_777.lines, 864968, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_777_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
