import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_91
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_91_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 11124 riscvConfig.encode Initial91.lines [] true = (Reencode0_91.lines, 11216, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_91_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
