import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_544
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_544_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 442116 riscvConfig.encode Reencode0_544.lines [] true = (Reencode1_544.lines, 442976, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_544_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
