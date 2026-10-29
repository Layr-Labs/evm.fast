import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_550
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_550_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 448952 riscvConfig.encode Initial550.lines [] true = (Reencode0_550.lines, 453596, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_550_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
