import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_328_eq : LabToTarget.sectionLabels 280316 Initial328.lines [] = (280840, localLabels0_328) := by
  with_unfolding_all rfl
#print axioms localLabels0_328_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
