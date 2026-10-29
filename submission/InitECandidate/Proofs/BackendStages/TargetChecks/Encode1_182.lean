import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_182_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 104068 riscvConfig.encode Reencode0_182.lines [] true = (Reencode1_182.lines, 104872, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_182_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
