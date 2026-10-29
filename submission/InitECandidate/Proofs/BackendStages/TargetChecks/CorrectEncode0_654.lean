import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_654_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 629380 riscvConfig.encode Initial654.lines [] true = (Reencode0_654.lines, 630932, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_654_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
