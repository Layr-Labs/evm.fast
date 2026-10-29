import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_724
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_724_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 798264 riscvConfig.encode Reencode0_724.lines [] true = (Reencode1_724.lines, 798728, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_724_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
