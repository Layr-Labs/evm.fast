import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_594
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_594_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 501700 riscvConfig.encode Reencode0_594.lines [] true = (Reencode1_594.lines, 504220, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_594_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
