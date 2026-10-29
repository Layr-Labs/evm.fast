import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_209_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 127280 riscvConfig.encode Reencode0_209.lines [] true = (Reencode1_209.lines, 127328, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_209_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
