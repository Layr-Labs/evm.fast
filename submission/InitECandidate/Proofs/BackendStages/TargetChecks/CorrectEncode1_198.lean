import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_198
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_198
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_198_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 111892 riscvConfig.encode Reencode0_198.lines [] true = (Reencode1_198.lines, 112464, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_198_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
