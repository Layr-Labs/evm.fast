import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_141
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_141
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_141_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 31900 riscvConfig.encode Initial141.lines [] true = (Reencode0_141.lines, 32188, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_141_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
