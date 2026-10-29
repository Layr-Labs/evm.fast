import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_349_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300684 riscvConfig.encode Initial349.lines [] true = (Reencode0_349.lines, 300700, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_349_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
