import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_227_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 154624 riscvConfig.encode Reencode0_227.lines [] true = (Reencode1_227.lines, 161200, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_227_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
