import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_562_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 463100 riscvConfig.encode Reencode0_562.lines [] true = (Reencode1_562.lines, 463528, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_562_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
