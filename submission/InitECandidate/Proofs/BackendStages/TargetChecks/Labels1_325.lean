import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_325_eq : LabToTarget.sectionLabels 279604 Reencode0_325.lines [] = (279988, localLabels1_325) := by
  with_unfolding_all rfl
#print axioms localLabels1_325_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
