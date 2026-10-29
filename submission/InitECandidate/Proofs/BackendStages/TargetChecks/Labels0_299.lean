import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_299_eq : LabToTarget.sectionLabels 252380 Initial299.lines [] = (252432, localLabels0_299) := by
  with_unfolding_all rfl
#print axioms localLabels0_299_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
