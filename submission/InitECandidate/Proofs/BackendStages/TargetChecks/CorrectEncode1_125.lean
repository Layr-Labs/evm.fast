import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_125
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_125_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 20928 riscvConfig.encode Reencode0_125.lines [] true = (Reencode1_125.lines, 21008, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_125_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
