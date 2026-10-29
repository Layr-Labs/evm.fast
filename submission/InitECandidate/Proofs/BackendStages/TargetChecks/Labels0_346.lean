import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_346_eq : LabToTarget.sectionLabels 300432 Initial346.lines [] = (300632, localLabels0_346) := by
  with_unfolding_all rfl
#print axioms localLabels0_346_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
