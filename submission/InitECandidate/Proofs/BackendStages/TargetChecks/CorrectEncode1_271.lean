import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_271
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_271_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 224260 riscvConfig.encode Reencode0_271.lines [] true = (Reencode1_271.lines, 224584, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_271_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
