import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_596
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_596_eq : LabToTarget.sectionLabels 518448 Reencode0_596.lines [] = (519016, localLabels1_596) := by
  with_unfolding_all rfl
#print axioms localLabels1_596_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
