import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_368
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_368
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_368_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 311924 riscvConfig.encode Reencode0_368.lines [] true = (Reencode1_368.lines, 311944, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_368_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
