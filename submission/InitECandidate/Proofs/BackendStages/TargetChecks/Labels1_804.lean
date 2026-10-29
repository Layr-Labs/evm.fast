import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_804
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_804_eq : LabToTarget.sectionLabels 942204 Reencode0_804.lines [] = (943088, localLabels1_804) := by
  with_unfolding_all rfl
#print axioms localLabels1_804_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
