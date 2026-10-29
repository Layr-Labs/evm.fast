import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_728
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_728_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 801644 riscvConfig.encode Initial728.lines [] true = (Reencode0_728.lines, 802208, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_728_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
