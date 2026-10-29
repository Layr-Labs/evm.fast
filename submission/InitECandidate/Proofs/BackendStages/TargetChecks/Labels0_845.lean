import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_845
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_845_eq : LabToTarget.sectionLabels 1001208 Initial845.lines [] = (1002536, localLabels0_845) := by
  with_unfolding_all rfl
#print axioms localLabels0_845_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
