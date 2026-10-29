import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_235
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_235_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 182084 riscvConfig.encode Reencode0_235.lines [] true = (Reencode1_235.lines, 184728, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_235_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
