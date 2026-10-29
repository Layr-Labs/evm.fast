import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_152_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 55752 riscvConfig.encode Reencode0_152.lines [] true = (Reencode1_152.lines, 56036, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_152_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
