import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_496_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 403064 riscvConfig.encode Reencode0_496.lines [] true = (Reencode1_496.lines, 403256, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_496_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
