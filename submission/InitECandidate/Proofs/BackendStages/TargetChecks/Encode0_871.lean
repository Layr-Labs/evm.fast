import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_871
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_871_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1071100 riscvConfig.encode Initial871.lines [] true = (Reencode0_871.lines, 1071348, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_871_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
