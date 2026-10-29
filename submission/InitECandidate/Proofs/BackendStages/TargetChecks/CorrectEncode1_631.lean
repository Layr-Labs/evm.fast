import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_631
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_631_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 582084 riscvConfig.encode Reencode0_631.lines [] true = (Reencode1_631.lines, 583760, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_631_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
