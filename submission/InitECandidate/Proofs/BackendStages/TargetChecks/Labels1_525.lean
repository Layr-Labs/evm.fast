import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_525
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_525_eq : LabToTarget.sectionLabels 428932 Reencode0_525.lines [] = (429456, localLabels1_525) := by
  with_unfolding_all rfl
#print axioms localLabels1_525_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
