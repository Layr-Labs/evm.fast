import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_316_eq : LabToTarget.sectionLabels 269128 Initial316.lines [] = (270172, localLabels0_316) := by
  with_unfolding_all rfl
#print axioms localLabels0_316_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
