import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_459_eq : LabToTarget.sectionLabels 374036 Initial459.lines [] = (386584, localLabels0_459) := by
  with_unfolding_all rfl
#print axioms localLabels0_459_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
