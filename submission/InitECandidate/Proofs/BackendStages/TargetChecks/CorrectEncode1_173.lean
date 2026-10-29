import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_173
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_173
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_173_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 102056 riscvConfig.encode Reencode0_173.lines [] true = (Reencode1_173.lines, 102124, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_173_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
