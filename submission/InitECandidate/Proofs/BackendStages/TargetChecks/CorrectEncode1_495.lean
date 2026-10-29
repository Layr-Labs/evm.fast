import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_495
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_495_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 402864 riscvConfig.encode Reencode0_495.lines [] true = (Reencode1_495.lines, 403064, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_495_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
