import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_132_eq : LabToTarget.sectionLabels 26380 Reencode0_132.lines [] = (26412, localLabels1_132) := by
  with_unfolding_all rfl
#print axioms localLabels1_132_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
