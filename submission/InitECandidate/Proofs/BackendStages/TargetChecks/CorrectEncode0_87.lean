import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_87
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_87_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 9820 riscvConfig.encode Initial87.lines [] true = (Reencode0_87.lines, 10136, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_87_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
