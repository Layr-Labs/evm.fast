import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_608_eq : LabToTarget.sectionLabels 532160 Reencode0_608.lines [] = (533756, localLabels1_608) := by
  with_unfolding_all rfl
#print axioms localLabels1_608_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
