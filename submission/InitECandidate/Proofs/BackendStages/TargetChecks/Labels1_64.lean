import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_64_eq : LabToTarget.sectionLabels 1112 Reencode0_64.lines [] = (1940, localLabels1_64) := by
  with_unfolding_all rfl
#print axioms localLabels1_64_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
