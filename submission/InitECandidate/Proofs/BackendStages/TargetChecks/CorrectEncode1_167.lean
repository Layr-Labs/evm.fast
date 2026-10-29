import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_167
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_167
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_167_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 99596 riscvConfig.encode Reencode0_167.lines [] true = (Reencode1_167.lines, 99904, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_167_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
