import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_134
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_134
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_134_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 27088 riscvConfig.encode Initial134.lines [] true = (Reencode0_134.lines, 27764, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_134_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
