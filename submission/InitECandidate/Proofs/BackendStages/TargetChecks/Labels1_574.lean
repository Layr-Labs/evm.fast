import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_574_eq : LabToTarget.sectionLabels 473936 Reencode0_574.lines [] = (474976, localLabels1_574) := by
  with_unfolding_all rfl
#print axioms localLabels1_574_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
