import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_300
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_300_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 252436 riscvConfig.encode Reencode0_300.lines [] true = (Reencode1_300.lines, 253492, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_300_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
