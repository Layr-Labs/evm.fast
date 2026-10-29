import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_489
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_489_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 400500 riscvConfig.encode Reencode0_489.lines [] true = (Reencode1_489.lines, 402328, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_489_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
