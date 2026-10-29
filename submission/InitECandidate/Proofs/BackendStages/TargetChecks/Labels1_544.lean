import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_544_eq : LabToTarget.sectionLabels 442116 Reencode0_544.lines [] = (442976, localLabels1_544) := by
  with_unfolding_all rfl
#print axioms localLabels1_544_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
