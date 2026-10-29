import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_164
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_164_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 97928 riscvConfig.encode Initial164.lines [] true = (Reencode0_164.lines, 98624, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_164_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
