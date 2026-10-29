import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_458
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_458_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 373704 riscvConfig.encode Reencode0_458.lines [] true = (Reencode1_458.lines, 374040, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_458_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
