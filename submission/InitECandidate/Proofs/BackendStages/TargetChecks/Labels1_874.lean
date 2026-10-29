import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_874
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_874_eq : LabToTarget.sectionLabels 1071844 Reencode0_874.lines [] = (1072092, localLabels1_874) := by
  with_unfolding_all rfl
#print axioms localLabels1_874_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
