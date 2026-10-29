import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_250_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 195356 riscvConfig.encode Reencode0_250.lines [] true = (Reencode1_250.lines, 196140, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_250_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
