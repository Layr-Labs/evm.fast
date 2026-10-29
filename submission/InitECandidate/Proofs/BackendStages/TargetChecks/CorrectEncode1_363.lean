import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_363
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_363_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 304728 riscvConfig.encode Reencode0_363.lines [] true = (Reencode1_363.lines, 305552, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_363_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
