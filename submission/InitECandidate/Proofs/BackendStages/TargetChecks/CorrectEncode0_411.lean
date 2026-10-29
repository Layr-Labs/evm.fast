import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_411
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_411_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 338328 riscvConfig.encode Initial411.lines [] true = (Reencode0_411.lines, 339080, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_411_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
