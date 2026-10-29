import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_435_eq : LabToTarget.sectionLabels 353476 Reencode0_435.lines [] = (353860, localLabels1_435) := by
  with_unfolding_all rfl
#print axioms localLabels1_435_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
