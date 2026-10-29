import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_427
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_427
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_427_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 346704 riscvConfig.encode Initial427.lines [] true = (Reencode0_427.lines, 348316, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_427_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
