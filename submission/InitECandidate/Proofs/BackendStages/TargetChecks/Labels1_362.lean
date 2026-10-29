import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_362_eq : LabToTarget.sectionLabels 304220 Reencode0_362.lines [] = (304728, localLabels1_362) := by
  with_unfolding_all rfl
#print axioms localLabels1_362_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
