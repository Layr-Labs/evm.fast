import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_763
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_763_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 833320 riscvConfig.encode Reencode0_763.lines [] true = (Reencode1_763.lines, 835016, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_763_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
