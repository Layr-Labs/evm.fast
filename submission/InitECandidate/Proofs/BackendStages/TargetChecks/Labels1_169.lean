import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_169_eq : LabToTarget.sectionLabels 100376 Reencode0_169.lines [] = (101004, localLabels1_169) := by
  with_unfolding_all rfl
#print axioms localLabels1_169_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
