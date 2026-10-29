import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_651_eq : LabToTarget.sectionLabels 618092 Reencode0_651.lines [] = (624836, localLabels1_651) := by
  with_unfolding_all rfl
#print axioms localLabels1_651_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
