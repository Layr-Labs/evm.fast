import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_838_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 995140 riscvConfig.encode Reencode0_838.lines [] true = (Reencode1_838.lines, 995892, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_838_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
