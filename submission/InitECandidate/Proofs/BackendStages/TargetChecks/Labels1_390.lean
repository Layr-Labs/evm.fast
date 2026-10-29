import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_390
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_390_eq : LabToTarget.sectionLabels 327840 Reencode0_390.lines [] = (327868, localLabels1_390) := by
  with_unfolding_all rfl
#print axioms localLabels1_390_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
