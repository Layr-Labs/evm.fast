import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_829_eq : LabToTarget.sectionLabels 980580 Initial829.lines [] = (980972, localLabels0_829) := by
  with_unfolding_all rfl
#print axioms localLabels0_829_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
