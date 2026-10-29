import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_725_eq : LabToTarget.sectionLabels 798708 Initial725.lines [] = (799704, localLabels0_725) := by
  with_unfolding_all rfl
#print axioms localLabels0_725_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
