import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_797_eq : LabToTarget.sectionLabels 918512 Reencode0_797.lines [] = (919996, localLabels1_797) := by
  with_unfolding_all rfl
#print axioms localLabels1_797_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
