import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_323
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_323_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 277576 riscvConfig.encode Initial323.lines [] true = (Reencode0_323.lines, 277664, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_323_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
