import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_284
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_284
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_284_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 244720 riscvConfig.encode Reencode0_284.lines [] true = (Reencode1_284.lines, 245080, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_284_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
