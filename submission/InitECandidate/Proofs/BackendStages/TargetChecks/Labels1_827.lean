import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_827_eq : LabToTarget.sectionLabels 979440 Reencode0_827.lines [] = (980020, localLabels1_827) := by
  with_unfolding_all rfl
#print axioms localLabels1_827_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
