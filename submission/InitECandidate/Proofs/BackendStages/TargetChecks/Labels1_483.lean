import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_483_eq : LabToTarget.sectionLabels 397888 Reencode0_483.lines [] = (398484, localLabels1_483) := by
  with_unfolding_all rfl
#print axioms localLabels1_483_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
