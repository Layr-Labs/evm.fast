import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_476
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_476_eq : LabToTarget.sectionLabels 393472 Reencode0_476.lines [] = (394112, localLabels1_476) := by
  with_unfolding_all rfl
#print axioms localLabels1_476_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
