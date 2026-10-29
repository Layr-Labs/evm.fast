import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_161
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_161_eq : LabToTarget.sectionLabels 92572 Reencode0_161.lines [] = (95284, localLabels1_161) := by
  with_unfolding_all rfl
#print axioms localLabels1_161_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
