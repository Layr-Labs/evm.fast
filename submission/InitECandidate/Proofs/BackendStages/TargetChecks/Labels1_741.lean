import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_741_eq : LabToTarget.sectionLabels 810424 Reencode0_741.lines [] = (811100, localLabels1_741) := by
  with_unfolding_all rfl
#print axioms localLabels1_741_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
