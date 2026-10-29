import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_535_eq : LabToTarget.sectionLabels 437640 Reencode0_535.lines [] = (438048, localLabels1_535) := by
  with_unfolding_all rfl
#print axioms localLabels1_535_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
