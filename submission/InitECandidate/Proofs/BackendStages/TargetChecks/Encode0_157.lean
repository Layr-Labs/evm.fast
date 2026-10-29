import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_157
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_157_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 90528 riscvConfig.encode Initial157.lines [] true = (Reencode0_157.lines, 90960, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_157_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
