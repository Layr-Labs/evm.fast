import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_71_eq : LabToTarget.sectionLabels 6080 Initial71.lines [] = (6536, localLabels0_71) := by
  with_unfolding_all rfl
#print axioms localLabels0_71_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
