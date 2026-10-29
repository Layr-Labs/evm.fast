import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_426
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_426
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_426_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 345844 riscvConfig.encode Initial426.lines [] true = (Reencode0_426.lines, 346704, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_426_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
