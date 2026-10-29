import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_875
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_875_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1072092 riscvConfig.encode Initial875.lines [] true = (Reencode0_875.lines, 1072340, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_875_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
