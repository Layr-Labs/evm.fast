import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_580
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_580_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 478936 riscvConfig.encode Initial580.lines [] true = (Reencode0_580.lines, 479468, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_580_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
