import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_827_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 979440 riscvConfig.encode Initial827.lines [] true = (Reencode0_827.lines, 980020, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_827_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
