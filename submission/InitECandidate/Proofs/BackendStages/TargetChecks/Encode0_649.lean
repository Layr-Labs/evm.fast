import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_649_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 611752 riscvConfig.encode Initial649.lines [] true = (Reencode0_649.lines, 611840, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_649_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
