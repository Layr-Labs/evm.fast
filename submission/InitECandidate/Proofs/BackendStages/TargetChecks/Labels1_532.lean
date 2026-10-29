import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_532
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_532_eq : LabToTarget.sectionLabels 433476 Reencode0_532.lines [] = (434360, localLabels1_532) := by
  with_unfolding_all rfl
#print axioms localLabels1_532_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
