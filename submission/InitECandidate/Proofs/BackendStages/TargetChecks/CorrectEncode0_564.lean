import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_564
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_564_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 463724 riscvConfig.encode Initial564.lines [] true = (Reencode0_564.lines, 464172, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_564_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
