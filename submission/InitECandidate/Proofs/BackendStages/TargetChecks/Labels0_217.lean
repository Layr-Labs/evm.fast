import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_217_eq : LabToTarget.sectionLabels 132240 Initial217.lines [] = (133388, localLabels0_217) := by
  with_unfolding_all rfl
#print axioms localLabels0_217_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
