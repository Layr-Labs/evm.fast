import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_295
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_295
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_295_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 251244 riscvConfig.encode Reencode0_295.lines [] true = (Reencode1_295.lines, 251476, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_295_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
