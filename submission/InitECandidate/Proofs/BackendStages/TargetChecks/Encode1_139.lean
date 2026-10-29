import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem Reencode1_139_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 30272 riscvConfig.encode Reencode0_139.lines [] true = (Reencode1_139.lines, 30448, true) := by
  with_unfolding_all rfl
#print axioms Reencode1_139_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
