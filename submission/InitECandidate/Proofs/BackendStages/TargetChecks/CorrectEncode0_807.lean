import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_807
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_807_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 947684 riscvConfig.encode Initial807.lines [] true = (Reencode0_807.lines, 948376, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_807_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
