import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_526_eq : LabToTarget.sectionLabels 429456 Reencode0_526.lines [] = (430496, localLabels1_526) := by
  with_unfolding_all rfl
#print axioms localLabels1_526_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
