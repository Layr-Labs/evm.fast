import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_388
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_388_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 326040 riscvConfig.encode Initial388.lines [] true = (Reencode0_388.lines, 326924, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_388_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
