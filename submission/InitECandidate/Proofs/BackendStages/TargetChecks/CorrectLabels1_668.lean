import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_668
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_668_eq : LabToTarget.sectionLabels 658456 Reencode0_668.lines [] = (660024, localLabels1_668) := by
  with_unfolding_all rfl
#print axioms localLabels1_668_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
