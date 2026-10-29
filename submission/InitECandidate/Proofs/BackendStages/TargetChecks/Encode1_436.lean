import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_436_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 353860 riscvConfig.encode Reencode0_436.lines [] true = (Reencode1_436.lines, 354244, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_436_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
