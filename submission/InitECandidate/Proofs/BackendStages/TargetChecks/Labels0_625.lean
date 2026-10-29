import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_625
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_625_eq : LabToTarget.sectionLabels 576772 Initial625.lines [] = (578008, localLabels0_625) := by
  with_unfolding_all rfl
#print axioms localLabels0_625_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
