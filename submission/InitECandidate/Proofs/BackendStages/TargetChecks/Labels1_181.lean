import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_181_eq : LabToTarget.sectionLabels 103864 Reencode0_181.lines [] = (104068, localLabels1_181) := by
  with_unfolding_all rfl
#print axioms localLabels1_181_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
