import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_710
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_710_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 770016 riscvConfig.encode Initial710.lines [] true = (Reencode0_710.lines, 770580, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_710_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
