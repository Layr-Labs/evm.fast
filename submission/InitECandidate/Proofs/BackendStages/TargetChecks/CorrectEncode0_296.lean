import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_296
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_296
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_296_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 251476 riscvConfig.encode Initial296.lines [] true = (Reencode0_296.lines, 251780, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_296_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
