import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_876
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_876_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1072340 riscvConfig.encode Initial876.lines [] true = (Reencode0_876.lines, 1072588, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_876_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
