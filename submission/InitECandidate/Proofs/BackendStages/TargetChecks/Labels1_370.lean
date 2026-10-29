import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_370
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_370_eq : LabToTarget.sectionLabels 312128 Reencode0_370.lines [] = (312740, localLabels1_370) := by
  with_unfolding_all rfl
#print axioms localLabels1_370_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
