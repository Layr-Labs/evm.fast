import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_112_eq : LabToTarget.sectionLabels 13640 Reencode0_112.lines [] = (13668, localLabels1_112) := by
  with_unfolding_all rfl
#print axioms localLabels1_112_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
