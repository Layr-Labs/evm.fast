import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_796
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_796_eq : LabToTarget.sectionLabels 907836 Reencode0_796.lines [] = (918512, localLabels1_796) := by
  with_unfolding_all rfl
#print axioms localLabels1_796_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
