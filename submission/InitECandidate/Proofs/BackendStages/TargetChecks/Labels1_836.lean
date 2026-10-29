import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_836
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_836_eq : LabToTarget.sectionLabels 988304 Reencode0_836.lines [] = (992220, localLabels1_836) := by
  with_unfolding_all rfl
#print axioms localLabels1_836_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
