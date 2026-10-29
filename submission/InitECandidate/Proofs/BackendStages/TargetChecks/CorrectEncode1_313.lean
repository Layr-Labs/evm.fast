import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_313
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_313
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_313_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 264712 riscvConfig.encode Reencode0_313.lines [] true = (Reencode1_313.lines, 265536, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_313_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
