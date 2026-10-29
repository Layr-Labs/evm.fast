import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_815
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_815_eq : LabToTarget.sectionLabels 964100 Reencode0_815.lines [] = (965304, localLabels1_815) := by
  with_unfolding_all rfl
#print axioms localLabels1_815_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
