import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_328_eq : LabToTarget.sectionLabels 280320 Reencode0_328.lines [] = (280844, localLabels1_328) := by
  with_unfolding_all rfl
#print axioms localLabels1_328_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
