import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_645
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_645_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 598972 riscvConfig.encode Initial645.lines [] true = (Reencode0_645.lines, 606104, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_645_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
