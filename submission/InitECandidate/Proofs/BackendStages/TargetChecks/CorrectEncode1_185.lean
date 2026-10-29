import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_185
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_185_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 105864 riscvConfig.encode Reencode0_185.lines [] true = (Reencode1_185.lines, 106028, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_185_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
