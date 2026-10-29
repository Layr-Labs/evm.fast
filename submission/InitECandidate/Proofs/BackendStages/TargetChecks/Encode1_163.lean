import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_163_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 95656 riscvConfig.encode Reencode0_163.lines [] true = (Reencode1_163.lines, 97928, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_163_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
