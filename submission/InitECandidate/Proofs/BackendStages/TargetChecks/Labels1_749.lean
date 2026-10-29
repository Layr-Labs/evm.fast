import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_749
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_749_eq : LabToTarget.sectionLabels 816784 Reencode0_749.lines [] = (817292, localLabels1_749) := by
  with_unfolding_all rfl
#print axioms localLabels1_749_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
