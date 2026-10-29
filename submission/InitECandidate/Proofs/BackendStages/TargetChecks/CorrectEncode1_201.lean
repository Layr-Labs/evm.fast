import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_201
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_201_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 115192 riscvConfig.encode Reencode0_201.lines [] true = (Reencode1_201.lines, 115208, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_201_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
