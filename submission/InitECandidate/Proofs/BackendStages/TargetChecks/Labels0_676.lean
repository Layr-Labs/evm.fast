import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_676_eq : LabToTarget.sectionLabels 664576 Initial676.lines [] = (664600, localLabels0_676) := by
  with_unfolding_all rfl
#print axioms localLabels0_676_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
