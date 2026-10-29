import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_278
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_278
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_278_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 235500 riscvConfig.encode Reencode0_278.lines [] true = (Reencode1_278.lines, 236692, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_278_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
