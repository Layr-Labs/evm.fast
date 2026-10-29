import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_522_eq : LabToTarget.sectionLabels 425620 Reencode0_522.lines [] = (426328, localLabels1_522) := by
  with_unfolding_all rfl
#print axioms localLabels1_522_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
