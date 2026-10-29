import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_400_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 331172 riscvConfig.encode Reencode0_400.lines [] true = (Reencode1_400.lines, 331720, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_400_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
