import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_145_eq : LabToTarget.sectionLabels 33888 Reencode0_145.lines [] = (34140, localLabels1_145) := by
  with_unfolding_all rfl
#print axioms localLabels1_145_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
