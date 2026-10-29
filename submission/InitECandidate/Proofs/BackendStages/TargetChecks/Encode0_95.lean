import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_95_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 11624 riscvConfig.encode Initial95.lines [] true = (Reencode0_95.lines, 11796, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_95_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
