import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_758
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_758_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 827528 riscvConfig.encode Initial758.lines [] true = (Reencode0_758.lines, 829528, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_758_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
