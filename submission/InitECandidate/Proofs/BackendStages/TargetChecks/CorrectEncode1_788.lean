import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_788
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_788_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 883332 riscvConfig.encode Reencode0_788.lines [] true = (Reencode1_788.lines, 884528, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_788_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
