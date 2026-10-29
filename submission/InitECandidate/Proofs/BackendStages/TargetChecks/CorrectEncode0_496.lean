import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_496
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_496_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 403064 riscvConfig.encode Initial496.lines [] true = (Reencode0_496.lines, 403256, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_496_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
