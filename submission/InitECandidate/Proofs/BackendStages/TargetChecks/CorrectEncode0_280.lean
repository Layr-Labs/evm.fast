import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_280
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_280
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_280_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 239760 riscvConfig.encode Initial280.lines [] true = (Reencode0_280.lines, 239948, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_280_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
