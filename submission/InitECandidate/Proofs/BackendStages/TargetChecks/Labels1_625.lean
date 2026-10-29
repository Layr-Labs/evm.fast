import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_625_eq : LabToTarget.sectionLabels 576792 Reencode0_625.lines [] = (578028, localLabels1_625) := by
  with_unfolding_all rfl
#print axioms localLabels1_625_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
