import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_743_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 811800 riscvConfig.encode Initial743.lines [] true = (Reencode0_743.lines, 813664, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_743_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
