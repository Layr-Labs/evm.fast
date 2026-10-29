import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_91_eq : LabToTarget.sectionLabels 11124 Reencode0_91.lines [] = (11216, localLabels1_91) := by
  with_unfolding_all rfl
#print axioms localLabels1_91_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
