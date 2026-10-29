import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_423_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 344580 riscvConfig.encode Reencode0_423.lines [] true = (Reencode1_423.lines, 345056, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_423_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
