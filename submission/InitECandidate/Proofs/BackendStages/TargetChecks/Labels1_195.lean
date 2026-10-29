import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_195
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_195_eq : LabToTarget.sectionLabels 111748 Reencode0_195.lines [] = (111764, localLabels1_195) := by
  with_unfolding_all rfl
#print axioms localLabels1_195_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
