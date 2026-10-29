import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_454_eq : LabToTarget.sectionLabels 365880 Reencode0_454.lines [] = (369760, localLabels1_454) := by
  with_unfolding_all rfl
#print axioms localLabels1_454_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
