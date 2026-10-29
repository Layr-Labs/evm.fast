import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_573_eq : LabToTarget.sectionLabels 473388 Initial573.lines [] = (473932, localLabels0_573) := by
  with_unfolding_all rfl
#print axioms localLabels0_573_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
