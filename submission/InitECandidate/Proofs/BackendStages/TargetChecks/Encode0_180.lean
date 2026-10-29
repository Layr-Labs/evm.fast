import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_180_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 103852 riscvConfig.encode Initial180.lines [] true = (Reencode0_180.lines, 103864, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_180_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
