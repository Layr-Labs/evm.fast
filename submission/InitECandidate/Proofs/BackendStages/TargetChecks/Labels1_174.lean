import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_174
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_174_eq : LabToTarget.sectionLabels 102124 Reencode0_174.lines [] = (102516, localLabels1_174) := by
  with_unfolding_all rfl
#print axioms localLabels1_174_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
