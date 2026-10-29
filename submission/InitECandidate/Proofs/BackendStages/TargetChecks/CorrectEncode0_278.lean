import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_278
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_278_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 235500 riscvConfig.encode Initial278.lines [] true = (Reencode0_278.lines, 236692, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_278_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
