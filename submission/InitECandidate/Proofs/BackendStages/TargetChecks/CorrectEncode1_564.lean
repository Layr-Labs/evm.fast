import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_564
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_564_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 463724 riscvConfig.encode Reencode0_564.lines [] true = (Reencode1_564.lines, 464172, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_564_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
