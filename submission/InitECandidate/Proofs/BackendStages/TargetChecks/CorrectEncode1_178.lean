import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_178
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_178
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_178_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 103560 riscvConfig.encode Reencode0_178.lines [] true = (Reencode1_178.lines, 103580, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_178_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
