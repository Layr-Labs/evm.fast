import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_152_eq : LabToTarget.sectionLabels 55748 Initial152.lines [] = (56032, localLabels0_152) := by
  with_unfolding_all rfl
#print axioms localLabels0_152_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
