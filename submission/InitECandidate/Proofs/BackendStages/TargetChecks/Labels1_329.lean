import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_329_eq : LabToTarget.sectionLabels 280844 Reencode0_329.lines [] = (281716, localLabels1_329) := by
  with_unfolding_all rfl
#print axioms localLabels1_329_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
