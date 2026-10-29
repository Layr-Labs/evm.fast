import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_743_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 811800 riscvConfig.encode Reencode0_743.lines [] true = (Reencode1_743.lines, 813664, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_743_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
