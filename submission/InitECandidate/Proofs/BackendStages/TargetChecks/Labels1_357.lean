import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_357_eq : LabToTarget.sectionLabels 300896 Reencode0_357.lines [] = (301704, localLabels1_357) := by
  with_unfolding_all rfl
#print axioms localLabels1_357_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
