import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_570
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_570_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 471312 riscvConfig.encode Reencode0_570.lines [] true = (Reencode1_570.lines, 472788, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_570_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
