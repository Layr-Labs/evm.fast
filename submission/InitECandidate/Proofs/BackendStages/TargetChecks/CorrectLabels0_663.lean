import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_663_eq : LabToTarget.sectionLabels 654384 Initial663.lines [] = (654412, localLabels0_663) := by
  with_unfolding_all rfl
#print axioms localLabels0_663_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
