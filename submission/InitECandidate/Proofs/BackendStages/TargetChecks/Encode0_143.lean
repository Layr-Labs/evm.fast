import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_143
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_143_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 32476 riscvConfig.encode Initial143.lines [] true = (Reencode0_143.lines, 33168, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_143_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
