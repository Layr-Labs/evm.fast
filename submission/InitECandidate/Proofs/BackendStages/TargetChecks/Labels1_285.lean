import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_285_eq : LabToTarget.sectionLabels 245080 Reencode0_285.lines [] = (247360, localLabels1_285) := by
  with_unfolding_all rfl
#print axioms localLabels1_285_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
