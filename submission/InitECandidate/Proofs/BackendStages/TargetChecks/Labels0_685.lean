import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_685_eq : LabToTarget.sectionLabels 682096 Initial685.lines [] = (688936, localLabels0_685) := by
  with_unfolding_all rfl
#print axioms localLabels0_685_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
