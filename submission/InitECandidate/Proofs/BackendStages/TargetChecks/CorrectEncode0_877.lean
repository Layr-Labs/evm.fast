import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_877_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1072588 riscvConfig.encode Initial877.lines [] true = (Reencode0_877.lines, 1072824, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_877_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
