import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_356
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_356
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_356_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300876 riscvConfig.encode Initial356.lines [] true = (Reencode0_356.lines, 300896, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_356_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
