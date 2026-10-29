import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_681_eq : LabToTarget.sectionLabels 665648 Reencode0_681.lines [] = (665672, localLabels1_681) := by
  with_unfolding_all rfl
#print axioms localLabels1_681_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
