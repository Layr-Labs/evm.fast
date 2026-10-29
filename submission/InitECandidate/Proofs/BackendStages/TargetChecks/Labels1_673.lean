import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_673
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_673_eq : LabToTarget.sectionLabels 663496 Reencode0_673.lines [] = (663892, localLabels1_673) := by
  with_unfolding_all rfl
#print axioms localLabels1_673_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
