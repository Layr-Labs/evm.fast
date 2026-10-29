import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_858
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_858_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1029684 riscvConfig.encode Initial858.lines [] true = (Reencode0_858.lines, 1030864, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_858_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
