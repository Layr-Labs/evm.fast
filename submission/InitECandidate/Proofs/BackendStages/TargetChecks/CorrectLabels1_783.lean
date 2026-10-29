import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_783
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_783_eq : LabToTarget.sectionLabels 871412 Reencode0_783.lines [] = (877720, localLabels1_783) := by
  with_unfolding_all rfl
#print axioms localLabels1_783_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
