import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_106_eq : LabToTarget.sectionLabels 12776 Reencode0_106.lines [] = (12908, localLabels1_106) := by
  with_unfolding_all rfl
#print axioms localLabels1_106_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
