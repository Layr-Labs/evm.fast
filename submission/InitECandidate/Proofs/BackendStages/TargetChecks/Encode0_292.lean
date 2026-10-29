import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_292_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 249796 riscvConfig.encode Initial292.lines [] true = (Reencode0_292.lines, 250300, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_292_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
