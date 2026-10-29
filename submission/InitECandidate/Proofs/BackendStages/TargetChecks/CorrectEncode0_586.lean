import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_586
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_586_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 485316 riscvConfig.encode Initial586.lines [] true = (Reencode0_586.lines, 486680, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_586_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
