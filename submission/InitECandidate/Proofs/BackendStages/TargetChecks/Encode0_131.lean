import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_131_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 26200 riscvConfig.encode Initial131.lines [] true = (Reencode0_131.lines, 26380, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_131_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
