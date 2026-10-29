import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_664
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_664_eq : LabToTarget.sectionLabels 654412 Initial664.lines [] = (654796, localLabels0_664) := by
  with_unfolding_all rfl
#print axioms localLabels0_664_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
