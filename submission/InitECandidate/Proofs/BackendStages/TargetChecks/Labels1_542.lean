import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_542_eq : LabToTarget.sectionLabels 440680 Reencode0_542.lines [] = (441412, localLabels1_542) := by
  with_unfolding_all rfl
#print axioms localLabels1_542_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
