import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_479_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 394640 riscvConfig.encode Initial479.lines [] true = (Reencode0_479.lines, 395124, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_479_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
