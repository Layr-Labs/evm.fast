import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_857
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_857_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 1029428 riscvConfig.encode Reencode0_857.lines [] true = (Reencode1_857.lines, 1029684, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_857_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
