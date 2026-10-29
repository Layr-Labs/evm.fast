import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_259_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 208076 riscvConfig.encode Reencode0_259.lines [] true = (Reencode1_259.lines, 213296, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_259_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
