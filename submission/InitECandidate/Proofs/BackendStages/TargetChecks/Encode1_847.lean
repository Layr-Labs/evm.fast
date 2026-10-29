import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_847
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_847_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 1003444 riscvConfig.encode Reencode0_847.lines [] true = (Reencode1_847.lines, 1004400, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_847_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
