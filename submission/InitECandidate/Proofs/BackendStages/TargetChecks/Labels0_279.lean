import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_279_eq : LabToTarget.sectionLabels 236688 Initial279.lines [] = (239756, localLabels0_279) := by
  with_unfolding_all rfl
#print axioms localLabels0_279_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
