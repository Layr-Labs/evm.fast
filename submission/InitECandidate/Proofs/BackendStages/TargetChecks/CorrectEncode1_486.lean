import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_486
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_486
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_486_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 399764 riscvConfig.encode Reencode0_486.lines [] true = (Reencode1_486.lines, 399876, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_486_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
