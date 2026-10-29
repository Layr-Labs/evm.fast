import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode0_413_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 339444 riscvConfig.encode Initial413.lines [] true = (Reencode0_413.lines, 339640, true) := by
  with_unfolding_all rfl
#print axioms Reencode0_413_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
