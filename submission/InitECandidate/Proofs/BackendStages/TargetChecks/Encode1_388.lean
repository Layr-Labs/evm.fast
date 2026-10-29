import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_388_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 326040 riscvConfig.encode Reencode0_388.lines [] true = (Reencode1_388.lines, 326924, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_388_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
