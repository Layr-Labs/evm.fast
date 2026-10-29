import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_578_eq : LabToTarget.sectionLabels 477872 Reencode0_578.lines [] = (478404, localLabels1_578) := by
  with_unfolding_all rfl
#print axioms localLabels1_578_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
