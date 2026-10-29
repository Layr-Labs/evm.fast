import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_527_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 430496 riscvConfig.encode Initial527.lines [] true = (Reencode0_527.lines, 430924, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_527_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
