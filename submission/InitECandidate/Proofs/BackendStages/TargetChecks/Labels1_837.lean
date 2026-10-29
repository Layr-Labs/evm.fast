import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_837
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_837_eq : LabToTarget.sectionLabels 992220 Reencode0_837.lines [] = (995140, localLabels1_837) := by
  with_unfolding_all rfl
#print axioms localLabels1_837_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
