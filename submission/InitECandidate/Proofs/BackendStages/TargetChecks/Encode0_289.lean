import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_289_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 248688 riscvConfig.encode Initial289.lines [] true = (Reencode0_289.lines, 249344, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_289_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
