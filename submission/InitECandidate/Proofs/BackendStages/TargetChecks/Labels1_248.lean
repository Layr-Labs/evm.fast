import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_248
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_248_eq : LabToTarget.sectionLabels 192000 Reencode0_248.lines [] = (195052, localLabels1_248) := by
  with_unfolding_all rfl
#print axioms localLabels1_248_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
