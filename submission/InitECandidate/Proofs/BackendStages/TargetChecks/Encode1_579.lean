import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_579_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 478404 riscvConfig.encode Reencode0_579.lines [] true = (Reencode1_579.lines, 478936, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_579_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
