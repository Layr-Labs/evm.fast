import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_718_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 791248 riscvConfig.encode Initial718.lines [] true = (Reencode0_718.lines, 791324, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_718_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
