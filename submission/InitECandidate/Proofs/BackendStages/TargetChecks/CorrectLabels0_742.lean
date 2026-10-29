import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_742_eq : LabToTarget.sectionLabels 811080 Initial742.lines [] = (811780, localLabels0_742) := by
  with_unfolding_all rfl
#print axioms localLabels0_742_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
