import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_371_eq : LabToTarget.sectionLabels 312740 Reencode0_371.lines [] = (312764, localLabels1_371) := by
  with_unfolding_all rfl
#print axioms localLabels1_371_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
