import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_116
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_116_eq : LabToTarget.sectionLabels 13844 Reencode0_116.lines [] = (13960, localLabels1_116) := by
  with_unfolding_all rfl
#print axioms localLabels1_116_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
