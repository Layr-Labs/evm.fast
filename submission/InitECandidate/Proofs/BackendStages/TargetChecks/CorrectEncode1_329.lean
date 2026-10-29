import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_329
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_329_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 280844 riscvConfig.encode Reencode0_329.lines [] true = (Reencode1_329.lines, 281716, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_329_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
