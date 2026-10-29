import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_232
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_232
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_232_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 170732 riscvConfig.encode Initial232.lines [] true = (Reencode0_232.lines, 171464, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_232_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
