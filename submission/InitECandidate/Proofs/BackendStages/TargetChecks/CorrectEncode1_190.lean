import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_190
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_190_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 107616 riscvConfig.encode Reencode0_190.lines [] true = (Reencode1_190.lines, 107864, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_190_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
