import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_777
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_777_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 864216 riscvConfig.encode Initial777.lines [] true = (Reencode0_777.lines, 864968, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_777_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
