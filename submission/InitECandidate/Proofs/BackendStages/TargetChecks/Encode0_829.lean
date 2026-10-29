import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_829_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 980600 riscvConfig.encode Initial829.lines [] true = (Reencode0_829.lines, 980992, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_829_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
