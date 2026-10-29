import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_640
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_640_eq : LabToTarget.sectionLabels 591908 Reencode0_640.lines [] = (592212, localLabels1_640) := by
  with_unfolding_all rfl
#print axioms localLabels1_640_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
