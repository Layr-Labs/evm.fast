import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_219
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_219_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 133460 riscvConfig.encode Reencode0_219.lines [] true = (Reencode1_219.lines, 133528, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_219_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
