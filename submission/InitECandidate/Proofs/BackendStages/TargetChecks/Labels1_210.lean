import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_210_eq : LabToTarget.sectionLabels 127328 Reencode0_210.lines [] = (131032, localLabels1_210) := by
  with_unfolding_all rfl
#print axioms localLabels1_210_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
