import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_376_eq : LabToTarget.sectionLabels 312860 Reencode0_376.lines [] = (312884, localLabels1_376) := by
  with_unfolding_all rfl
#print axioms localLabels1_376_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
