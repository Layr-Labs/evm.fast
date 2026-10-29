import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_864
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_864_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1055776 riscvConfig.encode Initial864.lines [] true = (Reencode0_864.lines, 1055968, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_864_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
