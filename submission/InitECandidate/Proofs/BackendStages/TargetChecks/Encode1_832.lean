import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_832
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_832_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 982056 riscvConfig.encode Reencode0_832.lines [] true = (Reencode1_832.lines, 984648, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_832_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
