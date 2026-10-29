import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_132_eq : LabToTarget.sectionLabels 26376 Initial132.lines [] = (26408, localLabels0_132) := by
  with_unfolding_all rfl
#print axioms localLabels0_132_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
