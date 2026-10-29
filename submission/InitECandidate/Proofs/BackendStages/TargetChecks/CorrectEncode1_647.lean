import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_647
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_647_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 611564 riscvConfig.encode Reencode0_647.lines [] true = (Reencode1_647.lines, 611632, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_647_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
