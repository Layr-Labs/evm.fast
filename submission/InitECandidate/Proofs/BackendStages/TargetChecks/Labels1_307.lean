import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_307_eq : LabToTarget.sectionLabels 261808 Reencode0_307.lines [] = (262052, localLabels1_307) := by
  with_unfolding_all rfl
#print axioms localLabels1_307_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
