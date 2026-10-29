import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_165_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 98624 riscvConfig.encode Reencode0_165.lines [] true = (Reencode1_165.lines, 99244, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_165_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
