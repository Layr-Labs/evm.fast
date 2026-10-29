import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_647
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_647_eq : LabToTarget.sectionLabels 611564 Reencode0_647.lines [] = (611632, localLabels1_647) := by
  with_unfolding_all rfl
#print axioms localLabels1_647_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
