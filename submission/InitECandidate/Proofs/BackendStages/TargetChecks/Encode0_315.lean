import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_315_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 266624 riscvConfig.encode Initial315.lines [] true = (Reencode0_315.lines, 269132, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_315_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
