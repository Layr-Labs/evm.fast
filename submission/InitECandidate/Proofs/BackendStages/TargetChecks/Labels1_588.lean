import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_588_eq : LabToTarget.sectionLabels 488024 Reencode0_588.lines [] = (490796, localLabels1_588) := by
  with_unfolding_all rfl
#print axioms localLabels1_588_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
