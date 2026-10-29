import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_657_eq : LabToTarget.sectionLabels 639276 Reencode0_657.lines [] = (642600, localLabels1_657) := by
  with_unfolding_all rfl
#print axioms localLabels1_657_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
