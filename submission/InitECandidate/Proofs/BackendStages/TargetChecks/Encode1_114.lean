import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_114_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 13696 riscvConfig.encode Reencode0_114.lines [] true = (Reencode1_114.lines, 13724, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_114_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
