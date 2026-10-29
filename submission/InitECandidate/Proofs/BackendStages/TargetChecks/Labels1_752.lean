import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_752
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_752_eq : LabToTarget.sectionLabels 818276 Reencode0_752.lines [] = (821468, localLabels1_752) := by
  with_unfolding_all rfl
#print axioms localLabels1_752_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
