import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_233_eq : LabToTarget.sectionLabels 171460 Initial233.lines [] = (172420, localLabels0_233) := by
  with_unfolding_all rfl
#print axioms localLabels0_233_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
