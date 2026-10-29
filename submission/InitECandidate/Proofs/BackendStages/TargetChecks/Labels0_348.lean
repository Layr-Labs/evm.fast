import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_348_eq : LabToTarget.sectionLabels 300648 Initial348.lines [] = (300680, localLabels0_348) := by
  with_unfolding_all rfl
#print axioms localLabels0_348_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
