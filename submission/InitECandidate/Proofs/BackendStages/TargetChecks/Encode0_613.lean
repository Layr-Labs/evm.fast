import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_613_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 535624 riscvConfig.encode Initial613.lines [] true = (Reencode0_613.lines, 536160, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_613_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
