import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_854
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_854_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1025056 riscvConfig.encode Initial854.lines [] true = (Reencode0_854.lines, 1029348, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_854_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
