import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_621
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_621_eq : LabToTarget.sectionLabels 550348 Reencode0_621.lines [] = (558168, localLabels1_621) := by
  with_unfolding_all rfl
#print axioms localLabels1_621_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
