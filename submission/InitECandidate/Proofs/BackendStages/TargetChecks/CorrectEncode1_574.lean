import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_574
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_574_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 473936 riscvConfig.encode Reencode0_574.lines [] true = (Reencode1_574.lines, 474976, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_574_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
