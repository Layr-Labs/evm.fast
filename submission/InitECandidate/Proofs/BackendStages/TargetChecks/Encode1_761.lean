import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_761
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_761_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 829868 riscvConfig.encode Reencode0_761.lines [] true = (Reencode1_761.lines, 831588, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_761_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
