import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_89
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_89_eq : LabToTarget.sectionLabels 10192 Reencode0_89.lines [] = (10700, localLabels1_89) := by
  with_unfolding_all rfl
#print axioms localLabels1_89_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
