import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_105
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_105_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 12712 riscvConfig.encode Reencode0_105.lines [] true = (Reencode1_105.lines, 12776, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_105_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
