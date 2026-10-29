import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_783
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_783_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 871412 riscvConfig.encode Initial783.lines [] true = (Reencode0_783.lines, 877720, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_783_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
