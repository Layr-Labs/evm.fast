import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_445_eq : LabToTarget.sectionLabels 359152 Reencode0_445.lines [] = (359520, localLabels1_445) := by
  with_unfolding_all rfl
#print axioms localLabels1_445_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
