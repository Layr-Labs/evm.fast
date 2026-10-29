import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_344
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_344_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 293444 riscvConfig.encode Reencode0_344.lines [] true = (Reencode1_344.lines, 295348, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_344_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
