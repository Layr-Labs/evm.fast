import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_153_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 56036 riscvConfig.encode Reencode0_153.lines [] true = (Reencode1_153.lines, 57480, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_153_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
