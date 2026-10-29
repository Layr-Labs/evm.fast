import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_315_eq : LabToTarget.sectionLabels 266624 Reencode0_315.lines [] = (269132, localLabels1_315) := by
  with_unfolding_all rfl
#print axioms localLabels1_315_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
