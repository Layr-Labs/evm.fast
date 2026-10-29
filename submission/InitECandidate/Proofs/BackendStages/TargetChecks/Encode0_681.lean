import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_681_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 665648 riscvConfig.encode Initial681.lines [] true = (Reencode0_681.lines, 665672, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_681_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
