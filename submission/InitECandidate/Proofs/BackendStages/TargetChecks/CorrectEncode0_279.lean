import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_279
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_279_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 236692 riscvConfig.encode Initial279.lines [] true = (Reencode0_279.lines, 239760, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_279_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
