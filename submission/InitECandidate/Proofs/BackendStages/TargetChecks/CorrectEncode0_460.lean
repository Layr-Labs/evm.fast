import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_460
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_460_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 386588 riscvConfig.encode Initial460.lines [] true = (Reencode0_460.lines, 389892, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_460_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
