import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_874
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_874_eq : LabToTarget.sectionLabels 1070752 Initial874.lines [] = (1070984, localLabels0_874) := by
  with_unfolding_all rfl
#print axioms localLabels0_874_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
