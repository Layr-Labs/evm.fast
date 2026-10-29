import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_273
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_273_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 224836 riscvConfig.encode Reencode0_273.lines [] true = (Reencode1_273.lines, 225056, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_273_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
