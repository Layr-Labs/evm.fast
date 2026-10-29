import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_75
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_75_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 7044 riscvConfig.encode Reencode0_75.lines [] true = (Reencode1_75.lines, 7072, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_75_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
