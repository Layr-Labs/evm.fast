import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_523
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_523_eq : LabToTarget.sectionLabels 426328 Reencode0_523.lines [] = (428732, localLabels1_523) := by
  with_unfolding_all rfl
#print axioms localLabels1_523_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
