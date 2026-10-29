import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_271_eq : LabToTarget.sectionLabels 224260 Reencode0_271.lines [] = (224584, localLabels1_271) := by
  with_unfolding_all rfl
#print axioms localLabels1_271_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
