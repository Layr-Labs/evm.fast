import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_117
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_117_eq : LabToTarget.sectionLabels 13960 Reencode0_117.lines [] = (14092, localLabels1_117) := by
  with_unfolding_all rfl
#print axioms localLabels1_117_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
