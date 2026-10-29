import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_511_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 416108 riscvConfig.encode Initial511.lines [] true = (Reencode0_511.lines, 416980, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_511_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
