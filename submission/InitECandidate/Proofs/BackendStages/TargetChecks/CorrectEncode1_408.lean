import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_408
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_408_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 335884 riscvConfig.encode Reencode0_408.lines [] true = (Reencode1_408.lines, 336940, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_408_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
