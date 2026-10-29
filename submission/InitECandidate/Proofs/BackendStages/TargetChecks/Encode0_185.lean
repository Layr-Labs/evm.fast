import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_185
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_185_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 105864 riscvConfig.encode Initial185.lines [] true = (Reencode0_185.lines, 106028, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_185_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
