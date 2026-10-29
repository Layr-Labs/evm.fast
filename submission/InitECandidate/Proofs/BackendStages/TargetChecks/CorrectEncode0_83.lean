import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_83
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_83_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 9388 riscvConfig.encode Initial83.lines [] true = (Reencode0_83.lines, 9452, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_83_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
