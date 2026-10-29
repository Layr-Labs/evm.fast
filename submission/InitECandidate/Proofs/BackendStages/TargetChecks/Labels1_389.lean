import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_389_eq : LabToTarget.sectionLabels 326924 Reencode0_389.lines [] = (327840, localLabels1_389) := by
  with_unfolding_all rfl
#print axioms localLabels1_389_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
