import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_561
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_561_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 462900 riscvConfig.encode Reencode0_561.lines [] true = (Reencode1_561.lines, 463100, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_561_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
