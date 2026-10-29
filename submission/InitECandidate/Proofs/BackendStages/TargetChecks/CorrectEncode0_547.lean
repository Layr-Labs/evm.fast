import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_547
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_547_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 447052 riscvConfig.encode Initial547.lines [] true = (Reencode0_547.lines, 447364, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_547_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
