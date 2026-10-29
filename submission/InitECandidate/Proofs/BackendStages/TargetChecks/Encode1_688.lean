import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_688
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_688_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 690204 riscvConfig.encode Reencode0_688.lines [] true = (Reencode1_688.lines, 693316, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_688_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
