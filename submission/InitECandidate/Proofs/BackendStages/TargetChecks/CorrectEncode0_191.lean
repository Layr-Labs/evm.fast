import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_191
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_191_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 107864 riscvConfig.encode Initial191.lines [] true = (Reencode0_191.lines, 108984, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_191_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
