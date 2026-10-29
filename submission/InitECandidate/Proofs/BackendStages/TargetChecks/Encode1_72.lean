import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_72_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 6540 riscvConfig.encode Reencode0_72.lines [] true = (Reencode1_72.lines, 6568, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_72_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
