import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_193
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_193_eq : LabToTarget.sectionLabels 110700 Reencode0_193.lines [] = (111444, localLabels1_193) := by
  with_unfolding_all rfl
#print axioms localLabels1_193_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
