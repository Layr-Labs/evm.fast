import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_72_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 6540 riscvConfig.encode Initial72.lines [] true = (Reencode0_72.lines, 6568, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_72_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
