import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_216_eq : LabToTarget.sectionLabels 132176 Reencode0_216.lines [] = (132244, localLabels1_216) := by
  with_unfolding_all rfl
#print axioms localLabels1_216_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
