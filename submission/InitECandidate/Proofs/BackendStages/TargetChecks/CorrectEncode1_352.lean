import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_352
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_352
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_352_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 300756 riscvConfig.encode Reencode0_352.lines [] true = (Reencode1_352.lines, 300788, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_352_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
