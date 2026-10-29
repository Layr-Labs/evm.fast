import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_478_eq : LabToTarget.sectionLabels 394288 Initial478.lines [] = (394636, localLabels0_478) := by
  with_unfolding_all rfl
#print axioms localLabels0_478_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
