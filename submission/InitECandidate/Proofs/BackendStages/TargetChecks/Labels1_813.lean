import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_813
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_813_eq : LabToTarget.sectionLabels 958644 Reencode0_813.lines [] = (961148, localLabels1_813) := by
  with_unfolding_all rfl
#print axioms localLabels1_813_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
