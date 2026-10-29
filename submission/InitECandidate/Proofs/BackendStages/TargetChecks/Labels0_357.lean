import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_357_eq : LabToTarget.sectionLabels 300892 Initial357.lines [] = (301700, localLabels0_357) := by
  with_unfolding_all rfl
#print axioms localLabels0_357_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
