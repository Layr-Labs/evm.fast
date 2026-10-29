import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_224
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_224_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 138260 riscvConfig.encode Initial224.lines [] true = (Reencode0_224.lines, 144904, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_224_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
