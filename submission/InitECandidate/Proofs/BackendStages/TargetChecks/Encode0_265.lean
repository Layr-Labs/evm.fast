import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_265_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 218684 riscvConfig.encode Initial265.lines [] true = (Reencode0_265.lines, 220688, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_265_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
