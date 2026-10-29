import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_656_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 637636 riscvConfig.encode Initial656.lines [] true = (Reencode0_656.lines, 639276, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_656_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
