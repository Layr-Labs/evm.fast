import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_553
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_553_eq : LabToTarget.sectionLabels 455532 Reencode0_553.lines [] = (456088, localLabels1_553) := by
  with_unfolding_all rfl
#print axioms localLabels1_553_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
