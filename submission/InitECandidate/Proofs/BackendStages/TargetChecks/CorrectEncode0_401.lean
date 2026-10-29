import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_401
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_401_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 331720 riscvConfig.encode Initial401.lines [] true = (Reencode0_401.lines, 333320, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_401_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
