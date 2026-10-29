import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_295
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_295_eq : LabToTarget.sectionLabels 251244 Reencode0_295.lines [] = (251476, localLabels1_295) := by
  with_unfolding_all rfl
#print axioms localLabels1_295_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
