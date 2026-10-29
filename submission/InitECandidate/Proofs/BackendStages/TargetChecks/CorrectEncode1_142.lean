import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_142
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_142
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_142_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 32188 riscvConfig.encode Reencode0_142.lines [] true = (Reencode1_142.lines, 32476, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_142_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
