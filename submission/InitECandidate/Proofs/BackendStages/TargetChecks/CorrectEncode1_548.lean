import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_548
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_548_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 447364 riscvConfig.encode Reencode0_548.lines [] true = (Reencode1_548.lines, 447676, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_548_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
