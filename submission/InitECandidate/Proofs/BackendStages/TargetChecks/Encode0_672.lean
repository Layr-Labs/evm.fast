import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_672
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_672_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 663100 riscvConfig.encode Initial672.lines [] true = (Reencode0_672.lines, 663496, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_672_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
