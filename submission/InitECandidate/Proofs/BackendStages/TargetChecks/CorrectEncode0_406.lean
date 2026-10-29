import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_406
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_406_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 335048 riscvConfig.encode Initial406.lines [] true = (Reencode0_406.lines, 335568, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_406_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
