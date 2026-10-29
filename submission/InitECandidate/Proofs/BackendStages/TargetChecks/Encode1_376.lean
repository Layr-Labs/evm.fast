import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_376_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 312860 riscvConfig.encode Reencode0_376.lines [] true = (Reencode1_376.lines, 312884, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_376_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
