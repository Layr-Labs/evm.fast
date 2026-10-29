import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_726
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_726_eq : LabToTarget.sectionLabels 799704 Initial726.lines [] = (800704, localLabels0_726) := by
  with_unfolding_all rfl
#print axioms localLabels0_726_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
