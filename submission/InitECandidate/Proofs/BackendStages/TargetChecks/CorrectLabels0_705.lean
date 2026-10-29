import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_705_eq : LabToTarget.sectionLabels 769304 Initial705.lines [] = (769360, localLabels0_705) := by
  with_unfolding_all rfl
#print axioms localLabels0_705_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
