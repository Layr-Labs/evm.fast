import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_675_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 664232 riscvConfig.encode Reencode0_675.lines [] true = (Reencode1_675.lines, 664596, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_675_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
