import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_139
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_139_eq : LabToTarget.sectionLabels 30272 Reencode0_139.lines [] = (30448, localLabels1_139) := by
  with_unfolding_all rfl
#print axioms localLabels1_139_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
