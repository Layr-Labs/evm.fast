import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_587
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_587_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 486680 riscvConfig.encode Initial587.lines [] true = (Reencode0_587.lines, 488024, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_587_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
