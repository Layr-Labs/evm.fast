import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_520_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 423532 riscvConfig.encode Reencode0_520.lines [] true = (Reencode1_520.lines, 424576, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_520_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
