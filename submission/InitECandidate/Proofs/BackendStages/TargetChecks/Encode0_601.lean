import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_601_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 521204 riscvConfig.encode Initial601.lines [] true = (Reencode0_601.lines, 526020, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_601_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
