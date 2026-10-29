import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_753_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 821468 riscvConfig.encode Initial753.lines [] true = (Reencode0_753.lines, 822528, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_753_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
