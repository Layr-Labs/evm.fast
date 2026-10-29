import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_322
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_322_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 275192 riscvConfig.encode Initial322.lines [] true = (Reencode0_322.lines, 277576, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_322_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
