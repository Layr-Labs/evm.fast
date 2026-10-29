import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_269
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_269_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 223652 riscvConfig.encode Reencode0_269.lines [] true = (Reencode1_269.lines, 223980, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_269_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
