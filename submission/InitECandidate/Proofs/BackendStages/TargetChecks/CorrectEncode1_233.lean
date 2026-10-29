import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_233
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_233_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 171464 riscvConfig.encode Reencode0_233.lines [] true = (Reencode1_233.lines, 172424, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_233_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
