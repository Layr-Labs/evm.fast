import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_580
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_580_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 478936 riscvConfig.encode Reencode0_580.lines [] true = (Reencode1_580.lines, 479468, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_580_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
