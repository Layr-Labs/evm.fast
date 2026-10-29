import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_629
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_629_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 579864 riscvConfig.encode Initial629.lines [] true = (Reencode0_629.lines, 579980, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_629_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
