import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_509
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_509
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_509_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 414364 riscvConfig.encode Initial509.lines [] true = (Reencode0_509.lines, 415236, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_509_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
