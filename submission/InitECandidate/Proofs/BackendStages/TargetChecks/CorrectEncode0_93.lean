import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_93
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_93_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 11244 riscvConfig.encode Initial93.lines [] true = (Reencode0_93.lines, 11272, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_93_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
