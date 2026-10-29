import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_307
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_307_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 261808 riscvConfig.encode Initial307.lines [] true = (Reencode0_307.lines, 262052, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_307_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
