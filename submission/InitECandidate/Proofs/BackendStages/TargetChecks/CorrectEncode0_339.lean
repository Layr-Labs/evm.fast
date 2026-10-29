import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_339
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_339
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_339_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 289796 riscvConfig.encode Initial339.lines [] true = (Reencode0_339.lines, 290048, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_339_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
