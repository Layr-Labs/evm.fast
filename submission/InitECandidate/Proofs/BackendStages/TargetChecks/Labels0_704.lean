import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_704
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_704_eq : LabToTarget.sectionLabels 733664 Initial704.lines [] = (769304, localLabels0_704) := by
  with_unfolding_all rfl
#print axioms localLabels0_704_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
