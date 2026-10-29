import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_544
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_544_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 442116 riscvConfig.encode Initial544.lines [] true = (Reencode0_544.lines, 442976, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_544_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
