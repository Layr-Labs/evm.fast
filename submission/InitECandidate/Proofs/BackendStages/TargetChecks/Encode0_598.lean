import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_598_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 519444 riscvConfig.encode Initial598.lines [] true = (Reencode0_598.lines, 520604, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_598_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
