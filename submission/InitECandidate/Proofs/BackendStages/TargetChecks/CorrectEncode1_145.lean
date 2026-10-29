import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_145
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_145_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 33888 riscvConfig.encode Reencode0_145.lines [] true = (Reencode1_145.lines, 34140, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_145_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
