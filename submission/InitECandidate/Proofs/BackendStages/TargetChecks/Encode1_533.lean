import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_533
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_533_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 434360 riscvConfig.encode Reencode0_533.lines [] true = (Reencode1_533.lines, 434788, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_533_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
