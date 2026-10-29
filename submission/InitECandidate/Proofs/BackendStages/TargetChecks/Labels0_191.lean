import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_191
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_191_eq : LabToTarget.sectionLabels 107860 Initial191.lines [] = (108980, localLabels0_191) := by
  with_unfolding_all rfl
#print axioms localLabels0_191_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
