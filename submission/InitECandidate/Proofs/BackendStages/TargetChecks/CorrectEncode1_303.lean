import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_303
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_303_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 258800 riscvConfig.encode Reencode0_303.lines [] true = (Reencode1_303.lines, 259140, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_303_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
