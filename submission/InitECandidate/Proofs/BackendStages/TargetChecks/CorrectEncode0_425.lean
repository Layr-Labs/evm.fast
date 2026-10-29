import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_425
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_425_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 345648 riscvConfig.encode Initial425.lines [] true = (Reencode0_425.lines, 345844, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_425_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
