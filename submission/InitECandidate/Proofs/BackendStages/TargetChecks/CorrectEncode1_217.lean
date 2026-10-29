import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_217
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_217_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 132244 riscvConfig.encode Reencode0_217.lines [] true = (Reencode1_217.lines, 133392, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_217_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
