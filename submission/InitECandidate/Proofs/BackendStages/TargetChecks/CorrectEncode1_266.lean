import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_266
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_266
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_266_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 220688 riscvConfig.encode Reencode0_266.lines [] true = (Reencode1_266.lines, 222080, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_266_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
