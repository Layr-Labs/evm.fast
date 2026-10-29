import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_338
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_338
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_338_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 289576 riscvConfig.encode Initial338.lines [] true = (Reencode0_338.lines, 289796, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_338_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
