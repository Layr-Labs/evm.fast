import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_92
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_92_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 11216 riscvConfig.encode Initial92.lines [] true = (Reencode0_92.lines, 11244, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_92_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
