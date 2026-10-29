import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_615_eq : LabToTarget.sectionLabels 537688 Initial615.lines [] = (539112, localLabels0_615) := by
  with_unfolding_all rfl
#print axioms localLabels0_615_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
