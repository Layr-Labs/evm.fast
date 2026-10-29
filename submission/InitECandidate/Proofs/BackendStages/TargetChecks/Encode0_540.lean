import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_540
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_540_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 440500 riscvConfig.encode Initial540.lines [] true = (Reencode0_540.lines, 440572, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_540_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
