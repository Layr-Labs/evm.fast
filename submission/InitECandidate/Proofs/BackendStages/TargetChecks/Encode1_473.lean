import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_473_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 393240 riscvConfig.encode Reencode0_473.lines [] true = (Reencode1_473.lines, 393276, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_473_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
