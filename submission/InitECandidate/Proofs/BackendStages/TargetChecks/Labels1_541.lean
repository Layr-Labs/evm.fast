import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_541_eq : LabToTarget.sectionLabels 440572 Reencode0_541.lines [] = (440680, localLabels1_541) := by
  with_unfolding_all rfl
#print axioms localLabels1_541_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
