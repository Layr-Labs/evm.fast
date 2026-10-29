import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_596_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 518448 riscvConfig.encode Reencode0_596.lines [] true = (Reencode1_596.lines, 519016, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_596_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
