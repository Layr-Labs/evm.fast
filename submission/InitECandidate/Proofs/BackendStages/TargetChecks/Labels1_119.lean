import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_119_eq : LabToTarget.sectionLabels 14240 Reencode0_119.lines [] = (14492, localLabels1_119) := by
  with_unfolding_all rfl
#print axioms localLabels1_119_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
