import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_129
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_129_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 24816 riscvConfig.encode Initial129.lines [] true = (Reencode0_129.lines, 26028, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_129_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
