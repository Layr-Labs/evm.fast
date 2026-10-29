import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_873
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_873_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 1071596 riscvConfig.encode Initial873.lines [] true = (Reencode0_873.lines, 1071844, false) := by
  with_unfolding_all rfl
#print axioms Reencode0_873_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
