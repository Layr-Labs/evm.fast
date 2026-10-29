import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_566
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_566_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 464480 riscvConfig.encode Initial566.lines [] true = (Reencode0_566.lines, 465536, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_566_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
