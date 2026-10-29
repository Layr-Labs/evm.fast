import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_867
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_867_eq : LabToTarget.sectionLabels 1057428 Reencode0_867.lines [] = (1060648, localLabels1_867) := by
  with_unfolding_all rfl
#print axioms localLabels1_867_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
