import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_383
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_383_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 320600 riscvConfig.encode Reencode0_383.lines [] true = (Reencode1_383.lines, 320696, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_383_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
