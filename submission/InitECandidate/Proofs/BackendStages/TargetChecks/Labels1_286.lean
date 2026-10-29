import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_286
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_286_eq : LabToTarget.sectionLabels 247360 Reencode0_286.lines [] = (247380, localLabels1_286) := by
  with_unfolding_all rfl
#print axioms localLabels1_286_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
