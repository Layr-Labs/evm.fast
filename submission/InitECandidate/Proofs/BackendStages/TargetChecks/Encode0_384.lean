import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_384_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 320696 riscvConfig.encode Initial384.lines [] true = (Reencode0_384.lines, 321792, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_384_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
