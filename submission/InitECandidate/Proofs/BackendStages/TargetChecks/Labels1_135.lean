import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_135_eq : LabToTarget.sectionLabels 27764 Reencode0_135.lines [] = (28340, localLabels1_135) := by
  with_unfolding_all rfl
#print axioms localLabels1_135_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
