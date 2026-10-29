import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_657
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_657_eq : LabToTarget.sectionLabels 639256 Initial657.lines [] = (642580, localLabels0_657) := by
  with_unfolding_all rfl
#print axioms localLabels0_657_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
