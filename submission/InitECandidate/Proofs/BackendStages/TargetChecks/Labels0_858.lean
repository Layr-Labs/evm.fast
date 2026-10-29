import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_858
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_858_eq : LabToTarget.sectionLabels 1029660 Initial858.lines [] = (1030840, localLabels0_858) := by
  with_unfolding_all rfl
#print axioms localLabels0_858_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
