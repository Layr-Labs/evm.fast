import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_154
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_154_eq : LabToTarget.sectionLabels 57480 Reencode0_154.lines [] = (87396, localLabels1_154) := by
  with_unfolding_all rfl
#print axioms localLabels1_154_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
