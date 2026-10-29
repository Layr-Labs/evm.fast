import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_824
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_824_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 977032 riscvConfig.encode Reencode0_824.lines [] true = (Reencode1_824.lines, 978084, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_824_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
