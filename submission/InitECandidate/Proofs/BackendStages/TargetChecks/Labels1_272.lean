import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_272
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_272_eq : LabToTarget.sectionLabels 224584 Reencode0_272.lines [] = (224836, localLabels1_272) := by
  with_unfolding_all rfl
#print axioms localLabels1_272_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
