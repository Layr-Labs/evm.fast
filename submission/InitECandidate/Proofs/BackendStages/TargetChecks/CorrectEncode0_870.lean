import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_870
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_870_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1070852 riscvConfig.encode Initial870.lines [] true = (Reencode0_870.lines, 1071100, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_870_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
