import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_438_eq : LabToTarget.sectionLabels 354748 Reencode0_438.lines [] = (355400, localLabels1_438) := by
  with_unfolding_all rfl
#print axioms localLabels1_438_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
