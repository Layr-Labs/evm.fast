import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_209_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 127280 riscvConfig.encode Initial209.lines [] true = (Reencode0_209.lines, 127328, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_209_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
