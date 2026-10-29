import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_867
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_867_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1057428 riscvConfig.encode Initial867.lines [] true = (Reencode0_867.lines, 1060648, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_867_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
