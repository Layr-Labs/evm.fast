import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_214
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_214
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_214_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 132056 riscvConfig.encode Initial214.lines [] true = (Reencode0_214.lines, 132108, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_214_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
