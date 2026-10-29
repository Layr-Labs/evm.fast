import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_768
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_768_eq : LabToTarget.sectionLabels 840052 Reencode0_768.lines [] = (840228, localLabels1_768) := by
  with_unfolding_all rfl
#print axioms localLabels1_768_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
